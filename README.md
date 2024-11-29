Program bash interaktif untuk menyembunyikan file rahasia dalam media seperti gambar, audio, atau video menggunakan Steghide, serta mengekstrak file yang tersembunyi dengan cara yang sederhana dan aman.


Fitur Utama:

Menyembunyikan file dalam gambar/audio/video dengan mudah.
Mengekstrak file tersembunyi dengan dukungan password.
Petunjuk penggunaan yang jelas untuk pemula.
Kompatibel dengan sistem berbasis Debian, Ubuntu, Kali Linux, dan Termux.



Persyaratan:

Pastikan Steghide terinstal di sistem Anda:

Untuk Debian/Ubuntu/Kali Linux: 
sudo apt install steghide

Untuk Termux: 
apt install steghide




==== Contoh Penggunaan ====


Menyembunyikan File


1. Siapkan file rahasia (contoh: secret.txt) dan file cover (contoh: image.jpg).


2. Pilih menu [1] Sembunyikan file dalam gambar/audio/video.


3. Masukkan:

~ File rahasia: secret.txt

~ File cover: image.jpg

~ Nama output: output.jpg

~ Password (opsional): masukkan password atau biarkan kosong.



4. File rahasia akan disembunyikan ke dalam output.jpg.


Mengekstrak File

1. Siapkan file media dengan file tersembunyi (contoh: output.jpg).


2. Pilih menu [2] Ekstrak file yang tersembunyi.


3. Masukkan:

~ File media: output.jpg

~ Folder tujuan: (contoh: extracted/).

~ Password (jika diperlukan).


4. File rahasia akan diekstrak ke folder extracted/.




Catatan:

Program ini dirancang untuk memberikan pengalaman pengguna yang intuitif dengan antarmuka teks yang menarik.

Gunakan program ini secara bertanggung jawab untuk keperluan privasi dan keamanan data Anda.

