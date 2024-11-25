# StudyGroup-MP-Motionlab

//logic untuk memahami kegunaan git.\
1.Ini dari main, untuk mengetahui gimana nanti akan saling terhubung projectnya dengan branch\
2. ini dari branch 0-Version-Control-Git.
   
 Review Materi Git week 1\
Disini saya menggunakan SSH dan saya pertama kali menggunakan SSH. pertama saya tadi di minta untuk membuat ssh-key, untuk dapat mengakses SSH dalam github.\
Pengertian SSH :\
-> SSH (Secure Shell) adalah protokol jaringan yang memungkinkan pengguna untuk mengakses dan menulis data dalam repositori GitHub secara aman. SSH menggunakan enkripsi end-to-end untuk mengamankan komunikasi antara perangkat yang terhubung.
 
[Dari Main]
disini saya menggunakan beberapa command yang kemarin sudah di ajarkan di antaranya adalah:
- git add . (untuk menambahkan file yang ingin di commit)
- git commit -m "pesan commit" (untuk mengirimkan pesan commit)
- git status (untuk melihat status file di dalam repository, apakah ada perubahan, file baru, atau file yang belum  di-commit)
- git log (untuk melihat riwayat commit yang sudah dilakukan) 
- git reset --hard (untuk mengembalikan repository ke kondisi commit tertentu secara permanen, menghapus perubahan yang belum di-commit)
- git push (untuk mengirimkan file yang telah di commit ke repository)
- git pull (untuk mengambil file dari repository ke local)
- git branch (untuk menampilkan branch yang ada)
- git checkout (untuk bergabung dengan branch yang telah dibuat)
- git checkout -b (untuk membuat branch baru)
- git merge (untuk menggabungkan branch yang telah dibuat)


[Dari  0-Version-Control-Git]
disini saya akan menjabarkan pengimplenetasian dari commad git diatas, adapun cara pengimplentasianya adalah sebagai berikut:
- pada saat awal koding kita menggunakan add untuk menambahkan file yang mau di commit\
    -> git add .
- setelah itu kita menggunakan commit untuk mengirimkan pesan file yang di commit\
    -> git commit -m "First commit"
- selanjutnya kita melakukan push untuk memasukan file yang sudah di commit ke repository\
    -> git push -u origin main
- lalu kita dapat melakukan pengecekan apakah kodingan kita sudah up to date di dalam repository\
    -> git status
- lalu jika terdapat kodingan yang belum masuk kedalam local kita dari repository kita bisa memanggilnya\ 
    -> git pull
- lalu jika kita membuat perubahan namun terjadi kesalahan atau error dan kita sudah melakukan commit kita bisa mengeceknya dengan menggunakan log\
    -> git log 
- dan jika kita ingin melakukan reset jika ada kesalahan yang terjadi kita bisa menggunakan\
    -> git reset --hard [berisikan ID commit yang didapat pada log]
- selanjutnya jika kita ingin melakukan perkodingan dalam satu repo namun tidak ingin menggangu mainnya kita bisa menggunakan checkout untuk membuat branch baru\
    -> git checkout -b [nama branch]
- untuk mengetahui kita berada di branch apa kita bisa mengeceknya dengan\
    -> git branch
- lalu kita bisa melakukan commit dan push ke branch yang telah dibuat namun kita harus pindah ke branch yang kita buat\
    -> git checkout [nama branch]
- lalu jika kita ingin menggabungkan branch yang telah dibuat kita bisa menggunakan merge\
    -> git merge [nama branch]

#untuk menambah pengetahuan saya, saya juga belajar melalui :\
https://dev.to/yudhasdev/tutorial-github-3-bagaimana-cara-menggunakan-branch-dan-merge-di-github-3nj1

//upadate week 0