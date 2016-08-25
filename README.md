Eth-stats for privitate ETC Ethereum network
--------------------------------------------

Author  : T. Leijtens
Date    : 19-07-2016

Requires:
* make
* docker 11.1x or better

Basic Install:
  (1) Build the docker image
  make build

  (2) Ensure that a virtual docker LAN exsists, when this is not the case use the following command to start one:
  make network

  (3) Start the Ethereum statistics server
  make stats

When you have stopped the process then please the care of cleaning the docker images. When these steps
are not followed up you will get an error when you try to restart a network or a Ethereum statistics
application! So take care of yourselves and your colleagues.

  (4a) Cleanup statistics docker image
  make rmstats

  (4b) Cleanup network (if you have started one!)
  make rmnetwork
