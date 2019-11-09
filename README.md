# EPC_VNF
PG-Backflip candidate VNF (Telecommunication)

This VNF consist of srsLTE and Open5gs. UE and ENB part is from srsLTE and EPC is from Open5gs. Below you will find the two implementation of this VNF, one is simple EPC and other with UE, ENB and EPC without using any hardware radio equipment and tested it using iperf. UE and ENB communicate with eachother using shared memory(IPC).
## Installing and Executing EPC
Step 1: Clone the repo
```bash
git clone https://github.com/aahad91/EPC_VNF.git
```
Step 2: build the images: mongodb, epc, web-interface [note: ensure that docker-compose is installed on your system]
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
