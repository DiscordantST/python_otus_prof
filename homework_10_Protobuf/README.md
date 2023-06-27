you need install:

$ pip install -r requirements.txt
$ pip instal .
protoc-c --c_out=. deviceapps.proto
protoc --python_out=. deviceapps.proto

RUN:

pip3 install -r requirements.txt
pip3 instal .
python3 setup.py test

result:
copying build/lib.linux-x86_64-cpython-311/pb.cpython-311-x86_64-linux-gnu.so -> 
test_read (tests.test_pb.TestPB.test_read) ... ok
test_write (tests.test_pb.TestPB.test_write) ... ok


From docker:

docker build --rm -t %youname% .
docker run -it --rm %youname%

command: bash start.sh 

copying build/lib.linux-x86_64-cpython-311/pb.cpython-311-x86_64-linux-gnu.so -> 
test_read (tests.test_pb.TestPB.test_read) ... ok
test_write (tests.test_pb.TestPB.test_write) ... ok

----------------------------------------------------------------------
Ran 2 tests in 0.005s

OK



