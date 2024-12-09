Week 3: Navigator Dan Package
---
 
### Navigator  
Navigator di Flutter digunakan untuk berpindah antar halaman (route).  
1. **Navigasi ke Halaman Baru:**  
   ```dart
   Navigator.push(context, MaterialPageRoute(builder: (context) => HalamanBaru()));
   ```  
   - `push`: Menambahkan halaman baru ke tumpukan (stack).  
   
2. **Kembali ke Halaman Sebelumnya:**  
   ```dart
   Navigator.pop(context);
   ```  
   - `pop`: Menghapus halaman saat ini dari stack dan kembali ke halaman sebelumnya.  

3. **Navigasi dengan Nama Route (Named Routes):**  
   - **Deklarasi Route:**  
     ```dart
     routes: {
       '/home': (context) => HomePage(),
       '/settings': (context) => SettingsPage(),
     }
     ```  
   - **Navigasi:**  
     ```dart
     Navigator.pushNamed(context, '/settings');
     ```  

4. **Mengirim Data Antar Halaman:**  
   ```dart
   Navigator.push(
     context,
     MaterialPageRoute(
       builder: (context) => DetailPage(data: 'Hello'),
     ),
   );
   ```  

5. **Menerima Data Kembali:**  
   ```dart
   final result = await Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => SecondScreen()),
   );
   print('Result: $result');
   ```  

---

### Package  
Flutter memiliki ekosistem **package** yang membantu mempercepat pengembangan.  

1. **Menambahkan Package:**  
   - Tambahkan dependensi di file `pubspec.yaml`:  
     ```yaml
     dependencies:
       nama_package: versi
     ```  
     Contoh:  
     ```yaml
     dependencies:
       http: ^1.0.0
     ```  

2. **Menginstal Package:**  
   Jalankan perintah:  
   ```bash
   flutter pub get
   ```  

3. **Menggunakan Package:**  
   - Import package di file Dart:  
     ```dart
     import 'package:http/http.dart' as http;
     ```  
   - Contoh penggunaan:  
     ```dart
     var response = await http.get(Uri.parse('https://example.com'));
     print(response.body);
     ```  

4. **Update Package:**  
   ```bash
   flutter pub upgrade
   ```  

---
