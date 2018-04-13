from calculate_latency import calculate_latency

avg = calculate_latency('../sent.txt', '../received.txt', 'latency_files/test.txt')
print(avg)
