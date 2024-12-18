Week 4 : State Management
---

---

### State Management dengan GetX di Flutter 🚀

**GetX** adalah solusi lengkap untuk pengelolaan state, dependensi, dan navigasi di Flutter. Dengan GetX, Anda dapat menulis kode yang lebih bersih, ringkas, dan mudah dipahami. Beberapa keunggulan menggunakan GetX adalah:  

- **Sederhana:** Tidak membutuhkan kode boilerplate berlebihan.  
- **Reaktif:** Mengubah data secara real-time dengan mekanisme observasi yang sederhana.  
- **Navigasi & Dependency Injection:** GetX mempermudah navigasi antar halaman dan manajemen dependensi tanpa harus mendeklarasikannya di file terpisah.  

---

### Perbandingan: Tanpa GetX vs. Dengan GetX

#### 1. **Navigasi ke Halaman Lain**  

**Tanpa GetX:**  
Menggunakan Navigator bawaan Flutter.  
```dart
// Navigasi ke halaman baru
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SecondPage()),
);

// Navigasi kembali
Navigator.pop(context);
```

**Dengan GetX:**  
Navigasi lebih ringkas tanpa `context`.  
```dart
// Navigasi ke halaman baru
Get.to(SecondPage());

// Navigasi kembali
Get.back();
```

#### 2. **State Management**

**Tanpa GetX:**  
Menggunakan `StatefulWidget` untuk memperbarui UI.  
```dart
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $counter"),
            ElevatedButton(
              onPressed: incrementCounter,
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
```

**Dengan GetX:**  
Menggunakan `Obx` untuk pembaruan UI yang reaktif.  
```dart
class CounterController extends GetxController {
  var counter = 0.obs;

  void increment() => counter++;
}

class CounterPage extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter with GetX")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Count: ${controller.counter}")),
            ElevatedButton(
              onPressed: controller.increment,
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
```

---
