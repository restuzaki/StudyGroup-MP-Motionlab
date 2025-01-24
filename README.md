🚀 Rangkuman Week 6: Working with API dan Future dalam Flutter

Di Week 6, sya mempelajari cara menggunakan Future dan API dalam Flutter untuk menangani operasi asinkron dan berkomunikasi dengan server! 🌐

1. Future dalam Dart ⏳
   Menangani operasi asinkron (contoh: ambil data dari internet, akses storage).
   Ideal untuk tugas yang memerlukan waktu dan tidak blocking.
2. Bekerja dengan API 🌍
   API memungkinkan komunikasi antara aplikasi Flutter dan server.
   Tools: Dio (lebih baik daripada http), Postman, JSONCrack, QuickType.
3. Model dan JSON Parsing 🧩
   Konversi data JSON ke model Dart untuk digunakan dalam aplikasi.
   dart
   Copy
   Edit
   class Product {
   final int id;
   final String title;
   final double price;
   Product({required this.id, required this.title, required this.price});
   factory Product.fromJson(Map<String, dynamic> json) {
   return Product(id: json['id'], title: json['title'], price: json['price'].toDouble());
   }
   }
4. Arsitektur API dalam Flutter 🏗️
   REMOTE → SERVICE → CONTROLLER → UI: Struktur untuk mengelola komunikasi API dengan aplikasi.
5. Best Practices 🔥
   Error Handling: Gunakan try-catch dan beri feedback yang jelas.
   Loading State: Gunakan FutureBuilder atau GetX untuk menampilkan loading.
   Data Caching: Simpan data sementara untuk meningkatkan UX.
