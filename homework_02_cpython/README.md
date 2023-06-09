Opcode

Run in Docker:

# On host machine
docker build -t python-modified .
docker run -it --rm -v ./:/patch python-modified /bin/bash/
# In container
git apply /patch/new_opcode.patch
make -j2


Until

# On host machine
docker build -t python-modified .
docker run -it --rm -v ./:/patch python-modified /bin/bash/
# In container
git apply /patch/until.patch
make -j2

Increment / Decrement

# On host machine
docker build -t python-modified .
docker run -it --rm -v ./:/patch python-modified /bin/bash/
# In container
git apply /patch/inc.patch
make -j2