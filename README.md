# 🎓 SIKONSEL (Sistem Informasi Konseling Sekolah)

![Language](https://img.shields.io/badge/Language-PHP%20Native-blue) ![Database](https://img.shields.io/badge/Database-MySQL%20%2F%20MariaDB-orange) ![Status](https://img.shields.io/badge/Status-Development-green)

**SIKONSEL** adalah platform digital Bimbingan dan Konseling (BK) yang dirancang untuk mempermudah interaksi antara siswa dan Guru BK di lingkungan **SMPN 4 Rancaekek**.

Aplikasi ini mendigitalkan proses konseling konvensional menjadi lebih modern, terstruktur, dan yang paling utama: **Menjamin Privasi Siswa** dengan sistem keamanan data yang ketat.

---

## 🚀 Fitur Utama

* **🔒 Konseling Aman (Encrypted):** Setiap curhatan siswa disimpan menggunakan enkripsi khusus, sehingga privasi sangat terjaga.
* **📅 Penjadwalan Otomatis:** Siswa dapat mengajukan jadwal temu janji konseling secara online.
* **📊 Dashboard Guru BK:** Memantau statistik masalah siswa, riwayat laporan, dan tindak lanjut kasus.
* **📱 Responsif:** Tampilan ramah pengguna (User Friendly) baik di Laptop maupun Smartphone.
* **👨‍👩‍👧 Akses Wali Murid:** Fitur khusus bagi orang tua untuk memantau atau melaporkan kendala siswa di rumah.

---

## 🌐 Demo Aplikasi

Anda dapat mencoba aplikasi ini secara langsung melalui tautan berikut:

👉 **[Live Demo: SIKONSEL Web](https://sikonsel-esp4r.my.id/Sikonsel)**

*(Catatan: Server demo mungkin sewaktu-waktu offline untuk pemeliharaan)*

### 🔑 Akun Percobaan (Demo User)

Silakan gunakan akun berikut untuk menjelajahi fitur:

| Peran (Role) | Username / NISN | Password |
| :--- | :--- | :--- |
| **Guru BK** | `admin_bk` | `admin123` |
| **Siswa** | `12345` | `siswa123` |

---

## 💻 Teknologi yang Digunakan

* **Backend:** PHP Native (Versi 8.x)
* **Frontend:** HTML5, CSS3, Tailwind CSS
* **Database:** MySQL / MariaDB
* **Keamanan:** Algoritma Enkripsi AES-256 (Untuk data sensitif)

---

## ⚙️ Instalasi (Localhost)

Jika Anda ingin menjalankan proyek ini di komputer lokal (Windows/XAMPP):

1.  **Clone Repository:**
    ```bash
    git clone [https://github.com/Salz30/Sikonsel_PEMWEB.git](https://github.com/Salz30/Sikonsel_PEMWEB.git)
    ```

2.  **Setup Database:**
    * Buat database baru bernama `sikonsel`.
    * Import file SQL yang ada di folder `database/` ke dalam database tersebut.

3.  **Konfigurasi:**
    * Buka file `config/database.php`.
    * Sesuaikan `username` dan `password` dengan settingan MySQL lokal Anda.

4.  **Jalankan:**
    * Buka browser dan akses `http://localhost/Sikonsel`.

---

## 📝 Catatan Pengembang
Proyek ini dikembangkan sebagai bagian dari **Tugas Akhir Pemrograman Web**. Seluruh data siswa yang tampil pada versi demo adalah data *dummy* (palsu) demi keamanan privasi.

---
*© 2026 Sikonsel Project - SMPN 4 Rancaekek*
