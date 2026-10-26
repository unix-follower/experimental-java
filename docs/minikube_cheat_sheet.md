# Start
```bash
minikube start \
  --driver vfkit \
  --rosetta=true \
  --container-runtime=docker \
  --vm=true \
  --cpus 4 \
  --memory 16g \
  --disk-size 200g \
  --vm=true \
  --cni calico \
  --mount=true \
  --mount-string /Users/Artsem_Nikitsenka/:/Users/Artsem_Nikitsenka/ \
  --addons default-storageclass,storage-provisioner,ingress,ingress-dns,istio,istio-provisioner

eval $(minikube -p minikube docker-env)
```
# Configure DNS
```bash
minikube ssh

ping -c 4 google.com
ping -c 4 8.8.8.8
nslookup google.com

sudo su -
mkdir -p /etc/systemd/resolved.conf.d/
cat << EOF > /etc/systemd/resolved.conf.d/resolved.conf
[Resolve]
DNS=8.8.8.8
FallbackDNS=192.168.105.1
EOF
systemctl restart systemd-resolved
logout
logout

# source ~/.bash_profile

# FallbackDNS="8.8.8.8 192.168.105.3  8.8.4.4"
```

# Check
## Folders & files are mounted
```bash
ls -l /Users/Artsem_Nikitsenka/experiments-java/docker/
cat /Users/Artsem_Nikitsenka/experiments-java/docker/otel-collector.yaml
```
## Network
```bash
nc -vz $(minikube ip) 4317
```

# Try with QEMU
```bash
HOMEBREW_PREFIX=/opt/homebrew
mkdir -p ${HOMEBREW_PREFIX}/var/run
sudo ${HOMEBREW_PREFIX}/opt/socket_vmnet/bin/socket_vmnet --vmnet-gateway=192.168.105.1 ${HOMEBREW_PREFIX}/var/run/socket_vmnet

minikube start \
  --driver qemu \
  --container-runtime=docker \
  --vm=true \
  --cpus 4 \
  --memory 16g \
  --disk-size 200g \
  --vm=true \
  --cni calico \
  --mount=true \
  --mount-string /Users/Artsem_Nikitsenka/:/Users/Artsem_Nikitsenka/ \
  --network socket_vmnet \
  --addons default-storageclass,storage-provisioner,ingress,ingress-dns,istio,istio-provisioner \
  --extra-config=kubelet.MountFlags="version=9p2000.L"

# sudo brew services start socket_vmnet
# or
# sudo /usr/local/opt/socket_vmnet/socket_vmnet
# Or, if you don't want/need a background service you can just run:
# /usr/local/opt/socket_vmnet/bin/socket_vmnet --vmnet-gateway\=192.168.105.1 /usr/local/var/run/socket_vmnet

# sudo /usr/local/opt/socket_vmnet/bin/socket_vmnet --vmnet-gateway=192.168.105.1  /usr/local/var/run/socket_vmnet
  # > /tmp/socket_vmnet.log &
```
