disallow
minestop
echo 'waiting for 15 seconds before continue'
sleep 15
cd /tmp
wget https://github.com/NebuTech/NBMiner/releases/download/v12.1/NBMiner_12.1_Linux.tgz
rm /opt/miners/custom/custom
rm -rf /opt/miners/custom/nbminer
mkdir /opt/miners/custom/nbminer
tar -xvf NBMiner_12.1_Linux.tgz
cp -R /tmp/NBMiner_Linux/* /opt/miners/custom/nbminer
rm -rf NBMiner_*
ln -s /opt/miners/custom/nbminer/nbminer /opt/miners/custom/custom
echo 'nbminer 12.1' > /opt/miners/custom/custom-version.txt
sudo service ethos-miner-monitor restart
allow
echo 'done'