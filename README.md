This is a simple Docker wrapper for running the open source IPX server here: https://github.com/intangir/ipxnet

If you run this on a server, clients running DOSBox  on your network can connect to it when they start and easy play multiplayer DOS games as if they were on an IPX network.

Starting the server
===================

To run the ipxnet server on your server machine, simply type:

```
docker run --name ipxnet -p 213:213/udp -d ahatherly/ipxnet
```

Configure the clients
=====================

Edit your dosbox config file: ~/.dosbox/dosbox-0.*.conf
Change the line:

```
ipx=false
```

to

```
ipx=true
```

Then add the following to the end under the [autoexec] section:

```
ipxnet connect X.X.X.X
```

Where X.X.X.X is the IP of the server running your ipxnet docker container.
Make sure you do the same on all the DOSBox clients, and when they start amy games with IPX network support they should see each other!

