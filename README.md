# Download Dulu

Download dulu PHP di situs resminya. Kemudian ditaruh sejajar dengan folder lainnya (di sampingnya `install dulu/`).

Extract PHP terus foldernya direname menjadi `php/`.

Terus download Codeigniter, ekstrak juga di situ terus rename menjadi `codeigniter/`.

# Install Dulu

Buka folder `install dulu/`. Nah, di situ ada petunjuknya sudah.

# Menjalankan

Nah, untuk konfigurasinya, bisa dibuka `START.bat` dengan cara klik kanan terus pilih `edit`.

Ini contoh isinya:

```batch
@echo off

set port=8956
set proyek=codeigniter

title %proyek%

copy php\php.template.ini php\php.ini
echo extension_dir = "%cd%\php\ext" >> php\php.ini

start firefox http://localhost:%port%

cd %proyek%
..\php\php -S localhost:%port%
```

Nah, yang bagian `port`, itu isi dengan angka 4 digit, terserah aja. Terus yang bagian `proyek`, itu isi dengan nama folder yang berisi komponen codeigniter (aplikasi kita).

# Tentang Database

Kita menggunakan SQLite yang letaknya di `codeigniter/database.sqlite` (new file, save dengan nama `database.sqlite`).

Nah, untuk menyambungkan databasenya dengan aplikasi codeigniter, buka `codeigniter\application\config\database.php` kemudian perhatikan baris berikut:

```php
$db['default'] = array(
	'dsn'	=> 'sqlite:database.sqlite',
	'hostname' => '',
	'username' => '',
	'password' => '',
	'database' => '',
	'dbdriver' => 'pdo',
	'dbprefix' => '',
	'pconnect' => FALSE,
	'db_debug' => (ENVIRONMENT !== 'production'),
	'cache_on' => FALSE,
	'cachedir' => '',
	'char_set' => 'utf8',
	'dbcollat' => 'utf8_general_ci',
	'swap_pre' => '',
	'encrypt' => FALSE,
	'compress' => FALSE,
	'stricton' => FALSE,
	'failover' => array(),
	'save_queries' => TRUE
);
```

Berdasarkan kode di atas, yang diubah adalah `dsn` dan `dbdriver`. Yang bagian `hostname` hapus aja karena kita nggak pake server.

Selamat bersenang-senang.