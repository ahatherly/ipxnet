docker build -t ahatherly/ipxnet .

docker run --name ipxnet -p 213:213/udp -d ahatherly/ipxnet
