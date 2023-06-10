For Run ip2w:
cd ../homework_5_uWSGI
docker build -t [Name]:[Tag] .
docker run --name debian1 [Name]:[Tag]



For run test:
cd ./homework_5_uWSGI/ip2w 
python3 -m unittest -v tests.py

test_correct_city (tests.TestAPI.test_correct_city) ... ok
test_functional_good_ip (tests.TestAPI.test_functional_good_ip) ... ok
test_valid_ip (tests.TestAPI.test_valid_ip) ... ok

----------------------------------------------------------------------
Ran 3 tests in 4.908s

OK
