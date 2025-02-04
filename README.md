---

# 📌 Rangkuman Week 7: Working with Local Storage in Flutter

pada minggu 7 ini, saya belajar tentang bagaimana menyimpan data secara lokal di perangkat pengguna. 💡 Kita mengeksplorasi berbagai metode penyimpanan lokal seperti **Local Storage, Session Storage, dan Cookies**, serta teknologi penyimpanan populer di Flutter seperti **Hive, SQLite, dan SharedPreferences**.

---

## 🔍 1. Perbedaan Cookies, Session Storage, dan Local Storage

| 🛠️ Teknologi           | 📡 Akses        | 📌 Penggunaan                             | ⏳ Masa Hidup                       |
| ---------------------- | --------------- | ----------------------------------------- | ----------------------------------- |
| **🍪 Cookies**         | Server & Client | Menyimpan session ID, preferensi pengguna | Bisa ditentukan atau hingga dihapus |
| **🖥️ Session Storage** | Hanya Client    | Data sementara saat tab aktif             | Terhapus saat tab/browser ditutup   |
| **💾 Local Storage**   | Hanya Client    | Data yang harus tetap ada                 | Bertahan kecuali dihapus manual     |

---

## 📂 2. Local Storage dalam Flutter

Local Storage memungkinkan aplikasi menyimpan data secara **persisten**, cocok untuk aplikasi yang bisa berjalan tanpa koneksi internet.

✨ **Kegunaan Local Storage:**  
✅ Menyimpan pengaturan aplikasi 🛠️  
✅ Menyimpan data pengguna 👤  
✅ Menyimpan data penting yang harus tetap ada 📊

---

## 🔥 3. Teknologi Penyimpanan Lokal di Flutter

### 🐝 Hive

⚡ **Deskripsi:** Database cepat dan ringan, tidak memerlukan server atau internet.  
⭐ **Kelebihan:**  
✔️ Sangat cepat & ringan  
✔️ Bisa menyimpan objek Dart langsung  
✔️ Setup yang sederhana

🔑 **Konsep Box:**  
🔹 Tempat menyimpan data dalam bentuk key-value  
🔹 Setiap **Box** memiliki nama unik dan penyimpanan bersifat **asinkron**

### 🗃️ SQLite

⚡ **Deskripsi:** Database relasional yang menyimpan data dalam bentuk tabel.  
⭐ **Kelebihan:**  
✔️ Cocok untuk aplikasi dengan **struktur data kompleks**  
✔️ Mendukung **query SQL** untuk fleksibilitas lebih tinggi  
✔️ Ideal untuk data seperti produk atau transaksi

⚠️ **Kekurangan:** Setup lebih rumit dibandingkan Hive.

### 🔑 SharedPreferences

⚡ **Deskripsi:** Cara paling simpel untuk menyimpan data kecil dalam bentuk key-value.  
⭐ **Kelebihan:**  
✔️ **Mudah digunakan**  
✔️ Cocok untuk **pengaturan aplikasi** atau **status login**

⚠️ **Kekurangan:** Tidak cocok untuk data besar atau kompleks.

---

## ⚖️ 4. Perbandingan Hive, SQLite, dan SharedPreferences

| Fitur            | 🐝 Hive                  | 🗃️ SQLite                   | 🔑 SharedPreferences    |
| ---------------- | ------------------------ | --------------------------- | ----------------------- |
| **Tipe Data**    | Key-Value, Objek Dart    | Tabel (Relasional)          | Key-Value               |
| **Kompleksitas** | Sederhana                | Sedang                      | Sangat Sederhana        |
| **Penggunaan**   | Data kecil hingga sedang | Data terstruktur & kompleks | Data kecil (pengaturan) |
| **Kecepatan**    | Cepat 🚀                 | Sedang                      | Cepat 🚀                |
| **Setup**        | Mudah                    | Lebih rumit                 | Sangat Mudah            |

---

## 🏆 5. Best Practices dalam Penggunaan Local Storage

✅ **Pilih Teknologi yang Tepat:**  
🔹 Gunakan **SharedPreferences** untuk data kecil (pengaturan, status login)  
🔹 Gunakan **Hive** untuk data kompleks tanpa struktur tabel  
🔹 Gunakan **SQLite** untuk data **relasional & terstruktur**

🔒 **Keamanan Data:**  
🔹 **Enkripsi** informasi sensitif seperti login atau data pribadi pengguna

🗑️ **Manajemen Storage:**  
🔹 **Bersihkan data** yang tidak diperlukan untuk menghemat penyimpanan

⚠️ **Error Handling:**  
🔹 **Tangani error** saat membaca atau menulis data agar aplikasi tetap stabil

---
