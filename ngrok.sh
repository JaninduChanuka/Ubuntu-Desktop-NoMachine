# #!/bin/bash
# stty intr ""
# stty quit ""
# stty susp undef

# clear
# rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1
# echo "======================="
# echo "Downloading ngrok..."
# echo "======================="
# wget -O ngrok.zip https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-windows-amd64.zip > /dev/null 2>&1
# unzip ngrok.zip > /dev/null 2>&1

#!/bin/bash
stty intr ""
stty quit ""
stty susp undef

clear
# Remove old files
rm -rf ngrok ngrok.zip ng.sh > /dev/null 2>&1

echo "======================="
echo "Adding ngrok repository..."
echo "======================="
# Add ngrok repository and key
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null
echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list

echo "======================="
echo "Updating package list..."
echo "======================="
# Update package list
sudo apt update

echo "======================="
echo "Installing ngrok..."
echo "======================="
# Install ngrok
sudo apt install -y ngrok

echo "======================="
echo "ngrok installation complete!"
echo "======================="

