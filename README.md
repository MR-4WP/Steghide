Program bash interaktif untuk menyembunyikan file rahasia dalam media seperti gambar, audio, atau video menggunakan Steghide, serta mengekstrak file yang tersembunyi dengan cara yang sederhana dan aman.


Fitur Utama:

Menyembunyikan file dalam gambar/audio/video dengan mudah.
Mengekstrak file tersembunyi dengan dukungan password.
Petunjuk penggunaan yang jelas untuk pemula.
Kompatibel dengan sistem berbasis Debian, Ubuntu, Kali Linux, dan Termux.



Persyaratan:

Pastikan Steghide sudah terinstal
di sistem Anda:

Untuk Debian/Ubuntu/Kali Linux: 

sudo apt install steghide


Untuk Termux: 
apt install steghide






==== Contoh Penggunaan ====



// Menyembunyikan File //


• Siapkan file rahasia (contoh: secret.txt) dan file cover (contoh: image.jpg) dalam 1 folder.


• Pilih menu [1] Sembunyikan file dalam gambar/audio/video.


• Ikuti sesuai arahan :

   
~ File rahasia: secret.txt

~ File cover: image.jpg

~ Nama output: output.jpg

~ Password (opsional): masukkan
  password atau biarkan kosong.



• File rahasia akan disembunyikan ke dalam output.jpg.


// Mengekstrak File //

• Siapkan file media dengan file tersembunyi (contoh: output.jpg).


• Pilih menu [2] Ekstrak file yang tersembunyi.


• Ikuti sesuai arahan :

~ File media: output.jpg

~ Folder tujuan: (contoh: extracted/).

~ Password (jika diperlukan).


• File rahasia akan diekstrak ke folder extracted/.




Catatan:

Program ini dirancang untuk memberikan pengalaman pengguna yang intuitif dengan antarmuka teks yang menarik.

Gunakan program ini secara bertanggung jawab untuk keperluan privasi dan keamanan data Anda.

