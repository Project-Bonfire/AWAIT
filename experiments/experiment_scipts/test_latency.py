from calculate_latency import calculate_latency

avg = calculate_latency('../../tmp/simul_temp/sent.txt', '../../tmp/simul_temp/received.txt', 'latency_files/test.txt')
print(avg)
