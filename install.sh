#!/bin/bash

# Install rustup
echo "Installing rustup"
sudo snap install rustup --classic
rustup install stable
sudo rustup install stable
echo "rustup installed"
# Install cmake
echo "Installing cmake"
sudo apt install cmake
echo "cmake installed"
# Clone Quiche
echo "Cloning quiche to /opt"
sudo git clone --recursive https://github.com/cloudflare/quiche /opt/quiche
cd /opt/quiche
echo "Building quiche"
sudo cargo build --examples
echo "done"

echo "You can use this command to send request"
echo "sudo cargo run --manifest-path=/opt/quiche/tools/apps/Cargo.toml --bin quiche-client -- https://<yourwebsite>"


