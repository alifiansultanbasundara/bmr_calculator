# BMR Calculator App

Aplikasi Flutter untuk menghitung Basal Metabolic Rate (BMR) dan kebutuhan kalori harian.

## Anggota Kelompok
- [Alifian Sultan Basundara (K3523010)]
- [Gustama Dillo Beshieto (K3523034)] 
- [Ridwan Hakim Mashadi (K3523066)]

## Deskripsi
Aplikasi ini menghitung BMR (Basal Metabolic Rate) menggunakan persamaan Mifflin-St Jeor yang merupakan metode paling akurat. BMR adalah jumlah kalori yang dibakar oleh tubuh saat istirahat total. Aplikasi juga menghitung kebutuhan kalori harian berdasarkan tingkat aktivitas pengguna.

## Fitur
- Input data: gender, tinggi, berat, usia, tingkat aktivitas
- Perhitungan BMR menggunakan Mifflin-St Jeor Equation
- Perhitungan kebutuhan kalori harian berdasarkan 6 tingkat aktivitas
- Tampilan hasil yang informatif
- UI yang user-friendly dengan tema gelap

## Persamaan yang Digunakan
### Untuk Pria:
BMR = 10 × berat(kg) + 6.25 × tinggi(cm) - 5 × usia(tahun) + 5

### Untuk Wanita:
BMR = 10 × berat(kg) + 6.25 × tinggi(cm) - 5 × usia(tahun) - 161

## Tingkat Aktivitas
1. Sedentary (little or no exercise) - BMR × 1.2
2. Light (exercise 1-3 times/week) - BMR × 1.375  
3. Moderate (exercise 4-5 times/week) - BMR × 1.465
4. Active (daily exercise) - BMR × 1.55
5. Very Active (intense exercise 6-7 times/week) - BMR × 1.725
6. Extra Active (very intense exercise daily) - BMR × 1.9

## Screenshot
[Tambahkan screenshot aplikasi di sini]

## Cara Menjalankan
1. Pastikan Flutter terinstall
2. Clone repository ini
3. Jalankan `flutter pub get`
4. Jalankan `flutter run`

## Teknologi yang Digunakan
- Flutter SDK
- Dart Programming Language
- Font Awesome Icons
