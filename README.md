Week 2: Slicing UI dengan Flutter
---


Apa Itu Widget?

Widget adalah komponen fundamental dalam Flutter yang saling terhubung untuk membentuk antarmuka pengguna (UI). Dengan menggunakan konsep widget tree (parent-child), kita dapat menyusun berbagai elemen untuk menciptakan desain yang interaktif dan responsif.

> Catatan: Semua yang terlihat di layar adalah widget!

---

Widget Penting dalam Flutter

MaterialApp
Implementasi dari desain Material Design. Digunakan sebagai kerangka utama aplikasi.

Scaffold
Sebagai widget kerangka yang menyediakan struktur dasar seperti AppBar, Drawer, dan FloatingActionButton.

---

Struktur Proyek Flutter

lib/
Folder utama tempat menyimpan file-file Dart. Folder ini sering digunakan dalam pengembangan proyek.

android/ dan ios/
Folder untuk kode native yang dapat dimanfaatkan oleh Flutter.

pubspec.yaml
File konfigurasi untuk mengatur dependencies dan aset tambahan yang diperlukan aplikasi.

---

Widget Tree

Contoh struktur pohon widget sederhana:
MyApp -> MaterialApp -> Scaffold -> Container -> Column/Row -> Child Widgets

---

Widget Utama yang Digunakan

1. SafeArea
   Memastikan elemen tidak bertabrakan dengan area sensitif perangkat, seperti notch atau status bar.

2. Container
   Widget serbaguna untuk membuat objek dengan properti yang dapat dimanipulasi (seperti tinggi, lebar, warna, dll.).

3. Icon
   Untuk menampilkan ikon dalam aplikasi.

4. Image
   Digunakan untuk menampilkan gambar, baik dari asset lokal maupun dari jaringan.

From lib: Tambahkan gambar ke folder assets dan daftarkan di pubspec.yaml.

From Network: Gunakan URL gambar langsung.

5. Button
   Membuat tombol interaktif dengan atribut seperti teks, warna, dan fungsi.

---

Widget Layouting

Untuk mengatur posisi elemen di layar, gunakan:

Column: Menyusun elemen secara vertikal.

Row: Menyusun elemen secara horizontal.

Stack: Menyusun elemen secara bertumpuk.

> Gunakan properti seperti mainAxisAlignment dan crossAxisAlignment untuk mengatur tata letak elemen dengan lebih presisi.

---

Dengan memahami dan menguasai widget serta struktur proyek, Anda dapat membuat antarmuka pengguna yang responsif dan menarik dalam Flutter. Selamat mencoba!

---
