#!/bin/bash

echo "🔥 Installing Top 10 Hacking Tools in Termux 🔥"
pkg update && pkg upgrade -y
pkg install -y python git curl wget nmap hydra whois dnsutils

# 1. Nmap
echo "✅ Installing Nmap"
pkg install nmap -y

# 2. Hydra
echo "✅ Installing Hydra"
pkg install hydra -y

# 3. Nikto
echo "✅ Installing Nikto"
git clone https://github.com/sullo/nikto.git $HOME/nikto

# 4. PhoneInfoga
echo "✅ Installing PhoneInfoga"
git clone https://github.com/sundowndev/phoneinfoga.git $HOME/phoneinfoga
cd $HOME/phoneinfoga
pip install -r requirements.txt

# 5. Sherlock
echo "✅ Installing Sherlock"
git clone https://github.com/sherlock-project/sherlock.git $HOME/sherlock
cd $HOME/sherlock
pip install -r requirements.txt

# 6. IP-Tracer
echo "✅ Installing IP-Tracer"
git clone https://github.com/rajkumardusad/IP-Tracer.git $HOME/IP-Tracer
cd $HOME/IP-Tracer
chmod +x install
bash install

# 7. Sqlmap
echo "✅ Installing Sqlmap"
pkg install sqlmap -y

# 8. Metasploit
echo "✅ Installing Metasploit"
pkg install unstable-repo -y
pkg install metasploit -y

# 9. Wget / Curl
echo "✅ Wget & Curl already installed"

# 10. Whois & DNSutils
echo "✅ Whois & DNS Tools already installed"

echo "🎉 All tools installed successfully!"
