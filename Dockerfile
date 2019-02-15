FROM ubuntu:18.04

# wget, make and libjemalloc1 are needed to download and build Redis' source
RUN apt-get update
RUN apt-get install -y wget make libjemalloc1

# Download Redis' Source
RUN wget http://download.redis.io/redis-stable.tar.gz
# Extract tar file
RUN tar xvzf redis-stable.tar.gz
RUN cd redis-stable

# Build and Install Redis
RUN make && make install
