NODENAME_STATS=eth-icecmon
NETWORKID=42
SUBNET=203.0.1
AUTHOR=tleijtens
VERSION=latest

build:
	docker build -t danturner/eth-netstats:latest .

network:
	docker network create --subnet $(SUBNET).0/24 --gateway $(SUBNET).254 iceclab

stats:
	docker run -i --net iceclab --ip $(SUBNET).12 -p 3000:3000 --name $(NODENAME_STATS) danturner/eth-netstats:latest

rmstats:
	docker rm -f $(NODENAME_STATS)

rmnetwork:
	docker network rm iceclab
