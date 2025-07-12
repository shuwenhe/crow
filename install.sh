#!/bin/bash

set -e

echo "🔧 安装依赖..."
sudo apt update
sudo apt install -y cmake g++ libssl-dev git libasio-dev

echo "📥 克隆 Crow..."
git clone https://github.com/CrowCpp/Crow.git --depth=1

echo "🛠️ 构建 Crow..."
cd Crow
mkdir -p build && cd build
cmake .. 
sudo make install

echo "✅ Crow 安装完成！"

