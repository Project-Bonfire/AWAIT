# Copyright (C) 2016 Siavoosh Payandeh Azad

import os
import sys
import random
from math import ceil

def calculate_latency(sent_file_path, received_file_path, latency_file_path):

    received_packets_dict = {}
    received_packets_length_dict = {}

    # Read the received file
    with open(received_file_path, 'r') as received_file:
        line = received_file.readline()

        while line != '':
            line = line.rstrip()
            received_packet = line.split()
            sender = received_packet[received_packet.index('From:') + 1]
            receiver = received_packet[received_packet.index('to:') + 1]
            packet_id = received_packet[received_packet.index('id:') + 1]
            packet_length = received_packet[received_packet.index('length:') + 1]
            identifier = sender + "_" + receiver+ "_" + packet_id

            if int(packet_id) > 16384:
                print(line)
                raise ValueError("Something is wrong! An identifier bigger than 256 in received packets file!")

            packet_time = received_packet[received_packet.index('at') + 1]

            if identifier in received_packets_dict.keys():
                identifier = sender + "_" + receiver+ "_" + str(int(packet_id) + 16384)

            received_packets_dict[identifier] = packet_time
            received_packets_length_dict[identifier] = int(packet_length)
            # print identifier, packet_time
            line = received_file.readline()

    sent_packets_dict={}

    # Read the sent file
    with open(sent_file_path, 'r') as sent_file:
        line = sent_file.readline()

        while line != '':
            line = line.rstrip()
            sent_packet = line.split()
            sender = sent_packet[sent_packet.index('From') + 1]
            receiver = sent_packet[sent_packet.index('to') + 1]
            packet_id = sent_packet[sent_packet.index('id:') + 1]
            identifier = sender + "_" + receiver+ "_" + packet_id

            if int(packet_id) > 16384:
                print(line)
                raise ValueError("Something is wrong! An identifier bigger than 256 in sent packets file!")

            packet_time = sent_packet[sent_packet.index('at') + 1]

            if identifier in sent_packets_dict.keys():
                identifier = sender + "_" + receiver + "_" + str(int(packet_id) + 16384)

            sent_packets_dict[identifier] = packet_time
            # print identifier, packet_time
            line = sent_file.readline()

    min_sent_time = 10 ** 100
    max_recived_time = 0

    if len(sent_packets_dict.keys()) != len(received_packets_dict.keys()):
        print("sent packets:", len(sent_packets_dict.keys()))
        print("received packets:", len(received_packets_dict.keys()))
        raise ValueError("Something is wrong! The number of sent packets are not equal to the number of recieved packets.")

    # Process the data from sent and received files
    delay_list = []
    packet_length_list = []
    for identifier in sent_packets_dict:
        packet_sent_time = float(sent_packets_dict[identifier])
        if identifier in received_packets_dict.keys():
            packet_recieved_time   = float(received_packets_dict[identifier])
            delay = packet_recieved_time - packet_sent_time

            if max_recived_time < packet_recieved_time:
                max_recived_time = packet_recieved_time
            if min_sent_time > packet_sent_time:
                min_sent_time = packet_sent_time

            delay_list.append(delay)
            packet_length_list.append(received_packets_length_dict[identifier])
        else:
            print(identifier)
            raise ValueError("Something is wrong! An identifier is missing from the recieved file")

    # Calculate parameters
    num_of_processed_packets = len(delay_list)
    max_packet_latency = max(delay_list) / 1000.0
    min_packet_latency = min(delay_list) / 1000.0
    avg_packet_latency = "%.2f" % float(sum(delay_list) / (len(delay_list) * 1000))

    bits_per_second = (sum(packet_length_list) * 32) / (float(max_recived_time-min_sent_time) / 10 ** 9)
    Kb_per_second = bits_per_second / 1024.0
    Mb_per_second = Kb_per_second / 1024.0
    avg_throughput = "%.2f" % float(Mb_per_second)

    print('-' * 28)
    print('Latency calculation results:')
    print('-' * 28)
    latency_str = ('Number of processed packets: ' + str(num_of_processed_packets) + '\n'
                   'Maximum packet latency: ' + str(max_packet_latency) + ' ns\n'
                   'Minimmum packet latency: ' + str(min_packet_latency) + ' ns\n'
                   'Average packet latency: ' + str(avg_packet_latency) + ' ns\n'
                   'Average throughput: ' + str(avg_throughput) + ' Mb/s\n')

    print(latency_str)


    if not os.path.exists(os.path.dirname(latency_file_path)):
        os.makedirs(os.path.dirname(latency_file_path))

    with open(latency_file_path, 'w') as latency_file:
        latency_file.writelines(latency_str)

    return avg_packet_latency
