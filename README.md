[![Build Status](https://travis-ci.com/aahad91/EPC_VNF.svg?branch=tng-testing)](https://travis-ci.com/aahad91/EPC_VNF)
# EPC_VNF
PG-Backflip candidate VNF (Telecommunication)

This VNF consist of srsLTE and Open5gs. UE and ENB part is from srsLTE and EPC is from Open5gs. Below you will find the two implementation of this VNF, one is simple EPC and other with UE, ENB and EPC without using any hardware radio equipment and tested it using iperf. UE and ENB communicate with eachother using shared memory(IPC).
## Installing and Executing EPC
Step 1: Clone the repo
```bash
git clone https://github.com/aahad91/EPC_VNF.git
```
Step 2: Build the images: mongodb, epc, web-interface [note: ensure that docker-compose is installed on your system]
```bash
cd EPC_VNF
sudo docker-compose build
```
Step 3: Execute the epc
```bash
sudo docker-compose up -d
#open the link http://localhost:3000/ in web-browser to view epc interface to add subscribers
#username: admin
#password: 1423
```
## Installing and Executing UE, ENB & EPC
Below you will find the deployment scenario. After adding the subscribers in EPC and UE assigned ip from EPC. You can check the traffic by running iperf cleint on UE and iperf server on test-server.
![deployment scenario](/images/epc.png)

Step 1: Clone the repo
```bash
git clone https://github.com/aahad91/EPC_VNF.git
```

Step 2: Build the images: mongodb, epc, web-interface, imsi-loader, ue, enb, test-server [note: ensure that docker-compose is installed on your system]
```bash
cd EPC_VNF
sudo docker-compose -f docker-compose-srslts-epc.yaml build
```

Step 3: Executing the deployment scenario as show in above image.
```bash
sudo docker-compose -f docker-compose-srslts-epc.yaml up -d 
```
Step 4: Starting iperf

Wait for approx 2 minutes as subsciber will be added in EPC, Enb conencts to EPC and UE conencts ENB. After that end to end connectivity EPC will assign the ip to UE that allowes browsing.
```bash
sudo docker exec -it ue iperf -c 192.168.30.10
#after few seconds results will appear on the screen
```
