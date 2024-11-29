#!/system/bin/sh

# Warna teks
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'

# Membersihkan layar
clear

# Judul
figlet Steghide
echo -e "${yellow}                                   Tools"
echo -e "${red}>>>>>>>>>>>>>>>>>>>|||>>>>>>>>>>>>>>>>>>${nc}"
echo
echo

# Menu
while true; do

    echo -e "${lightblue}Daftar Pilihan:"
    echo
    echo "[1]> Sembunyikan file dalam gambar/audio/video"
    echo "[2]> Ekstrak file yang tersembunyi"
    echo "[3]> Cara Penggunaan"
    echo "[4]> Keluar"
    echo
    echo -n "Masukkan pilihan Anda: "
    read -r pilihan
    clear
    figlet Steghide
echo -e "${yellow}                                   Tools"
echo -e "${red}>>>>>>>>>>>>>>>>>>>|||>>>>>>>>>>>>>>>>>>${nc}"
echo
echo

    case $pilihan in
        1) 
            echo -n "Masukkan path file (misal: file.txt): "
            read -r file
            echo -n "Masukkan file gambar/audio/video (misal: image.jpg): "
            read -r cover
            echo -n "Masukkan nama output file (misal: output.jpg): "
            read -r output
            echo -n "Masukkan password (jika diperlukan): "
            read -r -s password
            echo

            if steghide embed -cf "$cover" -ef "$file" -sf "$output" -p "$password"; then
                echo -e "${green}File berhasil disembunyikan di $output${nc}"
            else
                echo -e "${red}Gagal menyembunyikan file!${nc}"
                echo -e "${red}Pastikan file dan cover berada dalam 1 folder.${nc}"
            fi
            ;;
        2)
            echo -n "Masukkan file gambar/audio/video dengan file tersembunyi (misal: output.jpg): "
            read -r file
            echo -n "Masukkan folder tujuan ekstrak file: "
            read -r folder
            echo -n "Masukkan password (jika diperlukan): "
            read -r -s password
            echo

            mkdir -p "$folder" # Membuat folder jika belum ada
            if steghide extract -sf "$file" -p "$password" -xf "$folder/extracted_file"; then
                echo -e "${green}File berhasil diekstrak ke $folder/extracted_file${nc}"
            else
                echo -e "${red}Gagal mengekstrak file! Periksa kembali file atau password.${nc}"
            fi
            ;;
        3)
            # Cara Penggunaan
            echo -e "${yellow}Cara Penggunaan:${nc}"
            echo
            echo -e "${lightgreen}1. Sembunyikan file:${nc}"
            echo -e "   - Pastikan file yang akan disembunyikan (misal: secret.txt) "
            echo -e "     dan file cover (misal: image.jpg) tersedia."
            echo -e "   - Program akan meminta nama file output (misal: output.jpg) "
            echo -e "     dan password (opsional)."
            echo -e "   - Setelah selesai, file tersembunyi akan tersimpan di file output."
            echo
            echo -e "${lightgreen}2. Ekstrak file tersembunyi:${nc}"
            echo -e "   - Masukkan file cover (misal: output.jpg) yang berisi file tersembunyi."
            echo -e "   - Masukkan password (jika ada) untuk mengekstrak file."
            echo -e "   - File hasil ekstraksi akan disimpan di folder yang dipilih."
            echo
            echo
            echo -e "${lightgreen}Catatan:${nc} "
            echo -e "Gunakan perintah berikut untuk menginstall steghide jika belum terinstal:"
            echo
            echo -e "${lightgreen}For kali/debian/ubuntu/dst :"
            echo
            echo -e $yellow"sudo apt install steghide"
            echo
            echo
            echo -e "${lightgreen}For Termux :"
            echo
            echo -e $yellow"apt install steghide"
            echo
            echo -e $red">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>|||||>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
            echo
            echo
            break
            ;;
        4)  
            echo -e "${yellow}Keluar dari program. Terima kasih.${nc}"
            echo
            echo
            echo
            break
            ;;
        *)
            echo
            echo
            sleep 1
            echo -e "${red}Pilihan tidak valid. Silakan coba lagi.!!${nc}"
            ;;

    esac

    echo
done
