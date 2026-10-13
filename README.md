# Profil Mahasiswa

Proyek praktikum Flutter Pertemuan 2. Aplikasi menerapkan widget dasar, layout, modularitas, dan Git branch.

## Menjalankan

```bash
flutter pub get
flutter run
```

## Struktur

```text
lib/
├── main.dart
├── screens/
│   ├── about_screen.dart
│   ├── edit_profile_screen.dart
│   ├── layout_demo_screen.dart
│   └── profile_screen.dart
└── widgets/
    ├── action_buttons.dart
    ├── info_row.dart
    ├── profile_header.dart
    ├── profile_info.dart
    ├── profile_photo.dart
    └── social_media_row.dart
```

## Pemetaan latihan

- Latihan 1: `SocialMediaRow`, ikon Instagram, LinkedIn, GitHub, dan `SnackBar`.
- Latihan 2: `AboutScreen`, `Stack`, gradient, `Positioned`, dan `Navigator.pop`.
- Latihan 3: `LayoutDemoScreen`, `Expanded` dan `Flexible`.
- Latihan 4: `ProfileHeader` dan `ActionButtons` sebagai widget terpisah.
- `ProfileScreen` memakai `Expanded` untuk konten utama dan `Flexible` untuk tombol aksi.
- `EditProfileScreen` memberi contoh `StatefulWidget`, `TextField`, `SwitchListTile`, dan `setState`.
- `ProfilePhoto` memakai `Image.network` dengan fallback error.

## Git branch

```bash
git init
git add .
git commit -m "Membuat struktur awal aplikasi profil"
git checkout -b fitur-profil
git add .
git commit -m "Menambahkan fitur profil dan latihan layout"
git checkout main
git merge fitur-profil
git branch -d fitur-profil
git log --oneline --all
```

## Data laporan

Ganti data contoh berikut sebelum pengumpulan:

- `Nama Mahasiswa` pada `lib/widgets/profile_header.dart`.
- `21.11.0000` pada `lib/widgets/profile_header.dart`.
- `email@students.amikom.ac.id` pada `lib/widgets/profile_info.dart`.
- Identitas pada halaman judul laporan.
- Screenshot struktur folder, aplikasi, kode, hasil latihan, dan `git log`.

Nama file laporan: `Laporan_Praktikum_Pertemuan2_NIM_Nama.pdf`.
