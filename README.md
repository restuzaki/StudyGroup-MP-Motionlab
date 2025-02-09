# 🔥 **Mengenal Firebase & Firestore**  

## 🚀 **Apa Itu Firebase?**  
**Firebase** adalah platform dari **Google** yang menyediakan layanan backend untuk pengembangan aplikasi. Dengan Firebase, integrasi fitur seperti **database**, **autentikasi**, dan **notifikasi** bisa dilakukan dengan cepat dan mudah.  

### ⚡ **Fitur Utama Firebase:**  
✅ **Database**: Firestore & Realtime Database untuk penyimpanan data.  
✅ **Autentikasi**: Login dengan Google, email/password, dll.  
✅ **Cloud Messaging**: Kirim notifikasi ke pengguna.  
✅ **Analitik**: Firebase Analytics untuk melacak performa aplikasi.  
✅ **Hosting**: Deploy aplikasi web langsung dari Firebase.  
✅ **Machine Learning**: Fitur AI bawaan untuk meningkatkan pengalaman pengguna.  

---

## 📂 **Mengenal Firestore**  

**Firestore** adalah layanan **cloud database NoSQL** yang memungkinkan penyimpanan dan pengelolaan data secara **real-time**.  

### 🔹 **Struktur Data Firestore:**  
📁 **Collection** → Berisi kumpulan **document**  
📄 **Document** → Menyimpan data dalam format key-value dengan **ID unik**  

🔥 **Keunggulan Firestore:**  
✅ **Sinkronisasi real-time** antara semua perangkat.  
✅ **Multi-platform** (Android, iOS, Web).  
✅ **Mendukung berbagai tipe data**: String, Number, Array, Map, dll.  

---

## 🔄 **Stream vs API**  

📡 **API**  
🔹 Mekanisme komunikasi antara aplikasi dan server menggunakan **request-response**.  

🚀 **Stream**  
🔹 Data dikirim secara **berkelanjutan** tanpa harus menunggu request baru.  
🔹 Cocok untuk data **real-time**, seperti chat atau notifikasi.  

📌 **Snapshot**: Data yang dikirim melalui **Stream** dalam keadaan tertentu.  

---

## 🎨 **Mengenal StreamBuilder**  

🛠️ **StreamBuilder** adalah widget Flutter yang membangun UI berdasarkan data dari **Stream**.  

📌 **Contoh Implementasi**:
```dart
StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection('todos')
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Padding(
                                    padding: EdgeInsets.only(top: 48),
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }

```

---

## 🔧 **Integrasi Firestore ke Flutter**  

1️⃣ **Buat Proyek Firebase** di **Firebase Console**  
2️⃣ **Buat Database Firestore** dan atur aturan aksesnya  
3️⃣ **Integrasi Firebase ke Flutter**  
   🔹 Install **Firebase CLI & FlutterFire CLI**  
   🔹 Tambahkan package **firebase_core & cloud_firestore**  
   🔹 Konfigurasi Firestore dalam aplikasi Flutter  

---

