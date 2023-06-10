RUN:
python3 httpd.py

Run in Docker:
docker-compose up -d --build

Test:
# Clone repository with test files
git clone https://github.com/s-stupnikov/http-test-suite www
# Unit-tests
python3 httptest.py
# Load testing with "Apaxche Benchmark"
ab -n 50000 -c 100 -r http://127.0.0.1:8080/httptest/dir2/page.html
# Load testing with "wrk"
wrk -c100 -d5m http://127.0.0.1:8080/httptest/dir2/page.html


Bench:

Run ab -n 50000 -c 100 -r http://127.0.0.1:8080/httptest/dir2/page.html
This is ApacheBench, Version 2.3 <$Revision: 1879490 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient)
Completed 5000 requests
Completed 10000 requests
Completed 15000 requests
Completed 20000 requests
Completed 25000 requests
Completed 30000 requests
Completed 35000 requests
Completed 40000 requests
Completed 45000 requests
Completed 50000 requests
Finished 50000 requests


Server Software:        OTUServer
Server Hostname:        127.0.0.1
Server Port:            8080

Document Path:          /httptest/dir2/page.html
Document Length:        0 bytes

Concurrency Level:      100
Time taken for tests:   7.911 seconds
Complete requests:      50000
Failed requests:        0
Non-2xx responses:      50000
Total transferred:      7300000 bytes
HTML transferred:       0 bytes
Requests per second:    6319.92 [#/sec] (mean)
Time per request:       15.823 [ms] (mean)
Time per request:       0.158 [ms] (mean, across all concurrent requests)
Transfer rate:          901.08 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    1   1.7      0      10
Processing:     1   15  38.6     13     882
Waiting:        1   15  38.6     13     881
Total:          4   16  38.5     14     882

Percentage of the requests served within a certain time (ms)
  50%     14
  66%     15
  75%     16
  80%     16
  90%     18
  95%     21
  98%     22
  99%     24
 100%    882 (longest request)


Run wrk -t12 -c400 -d30s http://127.0.0.1:8080/httptest/dir2/page.html
Running 30s test @ http://127.0.0.1:8080/httptest/dir2/page.html
  12 threads and 400 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    30.01ms   86.87ms   1.71s    96.28%
    Req/Sec   670.68    441.96     2.24k    61.97%
  171336 requests in 30.04s, 23.86MB read
  Socket errors: connect 0, read 58, write 0, timeout 158
  Non-2xx or 3xx responses: 171336
Requests/sec:   5704.30
Transfer/sec:    813.31KB