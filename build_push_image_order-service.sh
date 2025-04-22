#!/bin/bash

# 1. Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image order-service, dan memiliki tag latest.
echo "Buat Docker Image dari Dockerfile..."
docker buildx build --platform linux/amd64 --provenance=false --sbom=false -t order-service:latest .

# 2. Melihat daftar image di lokal.
echo "Lihat daftar image..."
docker images

# 3. Mengubah nama image agar sesuai dengan format.
echo "Ubah nama image..."
docker tag order-service:latest ghcr.io/vourone/order-service:latest

# 4. Login via Terminal.
echo "Login via Terminal..."
echo $GH_PAT | docker login ghcr.io -u Vourone --password-stdin

# 5. Mengunggah image
echo "Unggah image..."
docker push ghcr.io/vourone/order-service:latest

echo "Image sukses diunggah!"
