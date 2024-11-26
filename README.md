Pada week pertama saya mempelajari dasar dasar dari dart.

pada pada week ini saya mempelajari beberapa hal di antaranya adalah :
1. Variabel
2. oprasi aritmatika
3. percabangan
4. pengulangan 
5. fungsi
6. list
7. map
8. class

adapun cara penerapan dan implementasinya adalah :

1.  variabel :
    ```
    String name = "slamet";

    //variable juga bisa di set kosong
    
    int? number;

2. oprasi aritmatika :
    ```
    (+,-,/,%,*)
    int a = 10;
    
3. percabangan :
    ```
    if (condisi) {
         // kode yang akan di eksekusi jika kondisi benar
        } else {
            // kode yang akan di eksekusi jika kondisi salah
        }

4. pengulangan:
    ```
    for (int i = 0; i < 10; i++) {
    // kode yang akan di eksekusi sebanyak 10 kali
    }

5. fungsi :
    ```
    //prosedure (tidak mengembalikan return nilai)
    void main() {
        print("Hello, World!");
    }

    double nilaiPi() {
        return 3.14;
    }

6. list :
    ```
    List<String> mahasiswa = ["Abdul", "Ahmad", "Ahmid"];
7. map :
   ```
    Map mahasiswa = {
        "nama" : "ibnu",
        "umur" : 20, 
    }

    mahasiswa["nama"]
    
9. class :
   ```
    class Mahasiswa {
        String nama;
        int umur;

        mahasiswa(this.nama, this.umur); //constructor
        }

        mahasiswa1 = mahasiswa("safari", 20);

