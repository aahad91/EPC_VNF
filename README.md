# EPC_VNF
PG-Backflip candidate VNF (Telecom)
##Installation EPC only
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
