Aplikasi-mencari-jarak-terdekat
- Aplikasi ini merupakan untuk mencari jarak terdekat yang akan di tempuh. Dengan study kasus titik titik sekolah.
## How to Install ?
1. Dependency
- Mysql
- minimal PHP 5
- Install python di laptop dengan python 3
## How to connect enginee python to aplikasi utama
- Connect enginee py file, nama file engine nns-engine.py
- Buka file map.php di folde utama aplikasi di directory views -> map.php	
- Didalam file map.php baris 73	atau nama variable var alldata
var alldata = <?php echo shell_exec("c:\Users\Bagus\Anaconda3\python.exe c:/nns-engine.py"); ?> // membuka library python
