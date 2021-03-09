FROM ubuntu
RUN apt-get update && apt-get install build-essential -y && apt-get install gcc-multilib -y
COPY 7171_pgv_HW.s .
RUN gcc -m32 -fno-pie -no-pie 7171_pgv_HW.s -o 7171pgv -g
CMD ./7171pgv
