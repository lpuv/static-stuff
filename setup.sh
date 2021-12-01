add-apt-repository -y ppa:deadsnakes/ppa
sudo apt install -y python3.9 python3.9-dev python3-pip python3.9-distutils ruby ruby-dev xautomation guake
wget https://bootstrap.pypa.io/get-pip.py
pip3 install --upgrade setuptools
pip3 install --upgrade pip
pip3 install --upgrade distlib
python3.9 get-pip.py
rm get-pip.py
python3.9 -m pip install pwncat-cs
# python3.9 -m pip install -U git+https://github.com/calebstewart/paramiko
# python3.9 -m pip install git+https://github.com/JohnHammond/base64io-python
wget https://github.com/21y4d/nmapAutomator/raw/master/nmapAutomator.sh
chmod +x nmapAutomator.sh
git clone https://github.com/gamer4life1/poor-mans-pentest /opt/pmp
