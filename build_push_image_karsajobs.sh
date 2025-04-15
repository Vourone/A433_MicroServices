#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
echo "Buat Docker Image dari Dockerfile..."
docker build -t karsajobs:latest .

# 2. Melihat daftar image di lokal.
echo "Lihat daftar image..."
docker images

# 3. Mengubah nama image agar sesuai dengan format.
echo "Ubah nama image..."
docker tag karsajobs:latest ghcr.io/vourone/karsajobs:latest

# 4. Login via Terminal.
echo "Login via Terminal..."
echo $GH_PAT | docker login ghcr.io -u Vourone --password-stdin

# 5. Mengunggah image
echo "Unggah image..."
docker push ghcr.io/vourone/karsajobs:latest

echo "Image sukses diunggah!"
