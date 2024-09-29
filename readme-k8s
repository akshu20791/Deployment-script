CREATE 3 ec2 t3.medium machine with all traffic enabled

In Master machine: 
sudo su
wget https://raw.githubusercontent.com/akshu20791/Deployment-script/main/k8s-master.sh
ls -l
ls
chmod 777 k8s-master.sh
ls -l
./k8s-master.sh


################# IN the nodes ###############################
sudo su (if not done)
 wget https://raw.githubusercontent.com/akshu20791/Deployment-script/main/k8s-nodes.sh
ls
ls -l
chmod 777 k8s-nodes.sh
ls -l
./k8s-nodes.sh


###########################################################################

RUN THE COMMAND IN NODES:

modprobe br_netfilter
echo 1 > /proc/sys/net/bridge/bridge-nf-call-iptables
echo 1 > /proc/sys/net/ipv4/ip_forward

###

After k8s installation is done . we need to connect nodes with the master via tokens 

### generate token in master:  (run below command in k8s master) 

kubeadm token create --print-join-command 

## whatever token comes up ...copy the token and paste it in notepad and after that in the command you will see 6443 written ...after that paste --cri-socket unix:///var/run/cri-dockerd.sock


EXAMPLE: YOUR TOKEN SHOULD LOOK LIKE THIS (REMEMBER NOT TO COPY BELOW TOKEN ITS NOT YOURS)

kubeadm join 172.31.17.126:6443 --cri-socket unix:///var/run/cri-dockerd.sock --token 5fh9ia.7dqyttb7tvzzarg6 --discovery-token-ca-cert-hash sha256:47a2d8b3157d6cee55109aa3a37887d031a24128de05732b0c168fe9da62733e 


################

Now paste the tokens in the nodes one by one 

#################













