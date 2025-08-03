#!/bin/bash

set -e

echo "🔄 Updating package list and upgrading system..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing iptables, resolvconf, wireguard..."
sudo apt install -y iptables resolvconf wireguard

echo "📦 Installing screen..."
sudo apt install -y screen

echo "📦 Installing nano..."
sudo apt install -y nano

echo "📦 Installing cron..."
sudo apt install -y cron

echo "📦 Installing psmisc..."
sudo apt-get install -y psmisc

echo "⬇️ Downloading udp2raw..."
wget https://github.com/wangyu-/udp2raw/releases/download/20230206.0/udp2raw_binaries.tar.gz -O udp2raw_binaries.tar.gz

echo "📂 Extracting udp2raw..."
tar -xvzf udp2raw_binaries.tar.gz

echo "✅ All packages installed and udp2raw extracted successfully."
