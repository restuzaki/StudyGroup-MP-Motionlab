import 'dart:io';

class Bank {
  double _saldo = 0;

  double get saldo => _saldo;

  void cekSaldo() {
    print('\n=== Saldo Anda Saat Ini ===');
    print('Rp $_saldo');
  }

  void depositSaldo(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print('Berhasil menambah saldo sebesar Rp $jumlah');
      print('\n=== Saldo Anda Saat Ini ===');
      print('Rp $_saldo');
    } else {
      print('Jumlah yang dimasukkan tidak valid!');
    }
  }

  void tarikSaldo(double jumlah) {
    if (jumlah > 0 && jumlah <= _saldo) {
      _saldo -= jumlah;
      print('Berhasil menarik saldo sebesar Rp $jumlah');
      print('\n=== Saldo Anda Saat Ini ===');
      print('Rp $_saldo');
    } else if (jumlah > _saldo) {
      print('Saldo tidak mencukupi!');
    } else {
      print('Jumlah yang dimasukkan tidak valid!');
    }
  }
}

void main() {
  final bank = Bank();
  while (true) {
    print('\n=== Aplikasi Bank Telkom ===');
    print('1. Cek Saldo');
    print('2. Deposit Saldo');
    print('3. Tarik Saldo');
    print('4. Keluar');
    stdout.write('Pilih menu yang tersedia: ');
    final input = stdin.readLineSync();

    switch (input) {
      case '1':
        bank.cekSaldo();
        break;
      case '2':
        stdout.write('Masukkan jumlah deposit: ');
        final depositInput = stdin.readLineSync();
        final depositJumlah = double.tryParse(depositInput ?? '0') ?? 0;
        bank.depositSaldo(depositJumlah);
        break;
      case '3':
        stdout.write('Masukkan jumlah yang ingin ditarik: ');
        final tarikInput = stdin.readLineSync();
        final tarikJumlah = double.tryParse(tarikInput ?? '0') ?? 0;
        bank.tarikSaldo(tarikJumlah);
        break;
      case '4':
        print('Terimakasih sudah menggunakan bank telkom!');
        return;
      default:
        print('Pilihan tidak valid, coba lagi.');
    }
  }
}

