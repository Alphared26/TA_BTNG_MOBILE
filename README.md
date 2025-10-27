# 🚘 Carrent — Aplikasi Rental Mobil Premium

![Carrent Banner](assets/images/carrent2.png)

### 👨‍💻 Dibuat oleh  
**Nama:** Mayolus Gavin  
**NIM:** A11.2024.15574  
**Kelompok:** Mobile Pagi  
**Prodi:** Teknik Informatika  
**Tahun:** 2025  

---

## 🏁 Deskripsi Proyek

**Carrent** adalah aplikasi penyewaan mobil mewah berbasis **Flutter** dengan desain bertema **Dark Luxury (Hitam–Abu–Gold)**.  
Aplikasi ini menonjolkan nuansa elegan seperti showroom mobil eksklusif — dengan animasi halus, tata letak modern, dan pengalaman pengguna yang premium.

---

## ✨ Fitur Utama

- 🔐 **Autentikasi Pengguna**
  - Login & Sign Up dengan tombol Google, Facebook, dan Apple  
  - Fitur *Show / Hide Password*  
- 🚗 **Daftar Mobil Lengkap**
  - 32 jenis mobil dengan nama, gambar, dan harga sewa per jam  
  - Kategori mobil (Sedan, SUV, MPV, Coupe, Convertible, Pickup)
- 💡 **Promo Banner**
  - Tampilan promo elegan “20% OFF for your first rental”
- 🏆 **Recommended Cars**
  - Isuzu ELF  
  - Range Rover SUV  
  - Honda Civic Sedan
- 📱 **Navigasi & Halaman**
  - Bottom Navigation Bar (Home, Search, Notif, Profile)
  - Halaman detail mobil, notifikasi, dan profil pengguna  
- 💬 **Konfirmasi Logout**
  - Popup konfirmasi muncul dari bawah layar  

---



## 🧩 Widget yang Digunakan

Aplikasi ini menggunakan semua **widget wajib** Flutter yang diminta dalam kriteria tugas:

| Widget | Keterangan |
|--------|-------------|
| `Container` | Struktur layout |
| `Text` | Semua label dan deskripsi |
| `ElevatedButton` | Tombol aksi utama |
| `Icon` | AppBar, BottomNav, Card |
| `Image` | Gambar mobil, logo, profil |
| `Row` / `Column` | Layout utama |
| `Padding` | Jarak antar elemen |
| `ListView` | Daftar mobil |
| `TextField` | Form login dan signup |
| `Navigator.push` / `Navigator.pop` | Navigasi antar halaman |
| `BottomNavigationBar` | Navigasi bawah aplikasi |


---

## 🗂️ Struktur Folder

lib/
│
├── mainPage.dart
├── homePage.dart
├── loginPage.dart
├── signupPage.dart
├── profilPage.dart
├── notifPage.dart
├── searchPage.dart
├── detailPage.dart
├── splashScreen.dart
└── assets/
├── images/
│ ├── carrent.png
│ ├── car_1.png ... car_32.png
│ ├── sedan.png
│ ├── suv.png
│ ├── elf.png
│ ├── car_promo.jpg
│ └── profile.jpg
└── icons/
├── google.png
├── facebook.png
└── apple.png


---


