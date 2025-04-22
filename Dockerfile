# Menggunakan base image Node.JS versi 18.20.8 dari DockerHub
FROM node:18.20.8
# Menetapkan /app sebagai direktori kerja
WORKDIR /app
# Menyalin seluruh kode sumber aplikasi
COPY . .
# Menginstall dependensi aplikasi
RUN npm install
# Mengekspos port yang digunakan aplikasi
EXPOSE 3001
# Mendefinisikan perintah yang akan dijalankan saat container dimulai.
CMD [ "npm", "start" ]