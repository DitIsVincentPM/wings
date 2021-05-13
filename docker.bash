sudo apt-get update
sudo apt-get -y install curl
apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -qq
sudo apt-get update
apt-get -y install docker-ce=5:19.03.14~3-0~ubuntu-bionic docker-ce-cli=5:19.03.14~3-0~ubuntu-bionic containerd.io=1.3.9-1
systemctl enable docker
mkdir -p /etc/pterodactyl
curl -L -o /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/latest/download/wings_linux_amd64
chmod u+x /usr/local/bin/wings
curl -L -o /etc/systemd/system/wings.service https://raw.githubusercontent.com/DitIsVincentPM/wings/main/wings.service
systemctl enable --now wings
