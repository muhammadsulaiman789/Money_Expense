# money_expense

A new Flutter application.

## Tes Pengetahuan

1. Hampir 2 Tahun, masih belajar terus sampe skrang

2. berikut beberpa library yang saya gunakan yaitu datepicker berfungsi untuk memilih tanggal, monthpicker berfungsi untuk memilih bulan saja, fluttersvg berfungsi untuk memnggunakan file .svg, googlemaps flutter untuk melihat lokasi ,daerah tempat, alamat dan lain lain, geolocator berfungsi untuk mendapatkan latitude, longitude , menghitung jarak membandingkan jarak ,radius dan lain lain, geocoding berfungsi untuk mengubah latitude dan longitude ke dalam berupa alamat addres yang sesuai dengan latitute longitude itu, image picker berfungsi untuk mengambil,menyimpan dan melihat foto ,sqflite berfungsi untuk menggunakan database berbasis lokal atau d sebut dengan sqllite, intl berfungsi untuk menggunakan tanggal dan waktu dari berbagai negara , autosize text uberfungsi untuk mengatur text agar sesuai dengan ukuran yang telah d tentukan dan agar responsive, webviw flutter berfungsi untuk menampilkan halaman web di dalam emulator atau aplikasi kita, awesome dialog berfungsi untuk menampilkan pesan dialog beraneka design dan berdasarkan jenis nya seperti alert info dan lain lain, flutter local notification berfungsi untuk menampilkan lokal nitifikasi di aplikasi kita yang telah kita atur, auto complete textfield berfungsi untuk mencari kata tapa harus mengetik semua huruf, modal progress hud berfungsi untuk membuat circular pogress indicator di aplikasi kita, place picker berdungsi untuk mnentukan lokasi yang kita pilih , permission handler berfungsi untuk mengatur beberapa permission di aplikasi kita seperti permission lokasi,internet dan lain lain, http berfungsi untuk kita dapat mengakses dan menggunakan url seperti API atau yang lain lain

3. yang biasa saya gunakan yaitu design pattern bloc , penerapan nya yaitu terdiri dari event, states, transitions, dan blocs
Events adalah input untuk Bloc. Biasanya, event ini merupakan UI events seperti tombol yang ditekan atau load halaman
States adalah output dari Bloc. Komponen dari UI dapat didefinisikan sebagai state dan bisa digambar ulang sesuai dengan state mereka saat ini.
Transitions adalah perubahan dari satu state ke state lain. Transition terjadi ketika suatu event dikirim setelah mapEventToState dipanggil, tetapi sebelum state dari Bloc diupdate. Transition terdiri atas current state, event, dan next state.
Blocs adalah komponen yang mengonversi Stream dari event ke Stream yang mengubah state

manfaatnya yaitu 
Simple Mudah dipahami dan bisa digunakan oleh developer dengan berbagai tingkat keterampilan
Powerful Dapat membantu pembuatan aplikasi kompleks yang tersusun dari komponen-komponen yang lebih kecil
Testable Mudah ditest

4. yaitu ketika terjadi error dalam xml dan ketika setelah update flutter ke versi selanjutnya, terkadang ada beberapa perubahan yang tidak terduga dan saya tidak tau beberapa solusi untuk mengatasi itu, contohnya seperti kurang cocoknya depedency antara yang sudah null safety , yang belum null safety dan antara beberapa depedency dengan yang lain. solusi dalam menghadapi itu yaitu saya dengan mencari d google , beberapa grup komunitas seperti stackoverflow , grup telegram flutter indonesia , bertanya ke senior dan memecahkan masalah tersebut bersama rekan kerja. 

5. yaitu dengan salah satunya dengan menggunakan beberapa state management seperti bloc,cubit,stream controller dan stream builder, multiprovider, hydrated bloc, multibloc in multipage app ,infinite ,MOBX state management , dan yang terbaru flutter bloc v.6
yaitu dengan ini berfungsi untuk mengatur data / state kita bekerja, bisa juga untuk memisahkan antara logic dan view dimana logic tersebut juga bisa re-usable. sehingga aplikasi kita terasa lebih aman lagi dan berperformance bagus

Cara kerja State Management maksudnya adalah kita bisa memasukan state yang kemungkinan bisa berubah sewaktu waktu, lalu Widget yang Subscribe (Listen) dengan Provider yang kita buat akan berubah sesuai dengan state yang berubah.
