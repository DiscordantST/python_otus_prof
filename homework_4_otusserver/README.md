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