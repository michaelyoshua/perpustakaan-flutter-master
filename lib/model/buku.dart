class Buku {
  String title;
  String publisher;
  String broadcastDate;
  String language;
  String description;
  String price;
  String imgUrl;
  int page;

  Buku({
    required this.title,
    required this.publisher,
    required this.broadcastDate,
    required this.language,
    required this.description,
    required this.price,
    required this.imgUrl,
    required this.page,
  });
}

var bukuList = [
  Buku(
    title: "Atomic Habits",
    publisher: "Gramedia Pustaka Utama",
    broadcastDate: "15 Sep 2019",
    language: "ID",
    description:
        """Atomic Habits: Perubahan Kecil yang Memberikan Hasil Luar Biasa adalah buku kategori self improvement karya James Clear. Pada umumnya, perubahan-perubahan kecil seringkali terkesan tak bermakna karena tidak langsung membawa perubahan nyata pada hidup suatu manusia. Jika diumpamakan sekeping koin tidak bisa menjadikan kaya, suatu perubahan positif seperti meditasi selama satu menit atau membaca buku satu halaman setiap hari mustahil menghasilkan perbedaan yang bisa terdeteksi. Namun hal tersebut tidak sejalan dengan pemikiran James Clear, ia merupakan seorang pakar dunia yang terkenal dengan 'habits' atau kebiasaan. Ia tahu bahwa tiap perbaikan kecil bagaikan menambahkan pasir ke sisi positif timbangan dan akan menghasilkan perubahan nyata yang berasal dari efek gabungan ratusan bahkan ribuan keputusan kecil. Ia menamakan perubahan kecil yang membawa pengaruh yang luar biasa dengan nama atomic habits.""",
    price: 'Rp 109.000',
    imgUrl: "images/atomic_habit.png",
    page: 356,
  ),
  Buku(
    title: "Cantik Itu Luka",
    publisher: "Gramedia Pustaka Utama",
    broadcastDate: "17 Jan 2018",
    language: "ID",
    description:
        """Hidup di era kolonialisme bagi para wanita dianggap sudah setara seperti hidup di neraka. Terutama bagi para wanita berparas cantik yang menjadi incaran tentara penjajah untuk melampiaskan hasrat mereka. Itu lah takdir miris yang dilalui Dewi Ayu, demi menyelamatkan hidupnya sendiri Dewi harus menerima paksaan menjadi pelacur bagi tentara Belanda dan Jepang selama masa kedudukan mereka di Indonesia.""",
    price: 'Rp 163.900',
    imgUrl: "images/cantik_itu_luka.jpg",
    page: 520,
  ),
  Buku(
    title: "Black Showman Dan Pembunuhan Di Kota Tak Bernama",
    publisher: "Gramedia Pustaka Utama",
    broadcastDate: "20 Jan 2022",
    language: "ID",
    description:
        """“Black Showman dan Pembunuhan di Kota Tak Bernama” merupakan novel misteri karya Keigo Higashino, penulis seri Detektif Galileo yang laris hingga mancanegara. Kisahnya sendiri berpusat pada misteri kematian Kamio Eiichi, seorang mantan guru SMP ditemukan tewas tercekik di halaman rumahnya.""",
    price: 'Rp 119.000',
    imgUrl: "images/black_showman.jpg",
    page: 516,
  ),
  Buku(
    title: "Grit: Kekuatan Passion dan Kegigihan",
    publisher: "Gramedia Pustaka Utama",
    broadcastDate: "16 Des 2018",
    language: "ID",
    description:
        """“Banyak orang yang mengira jika untuk mencapai sebuah kesuksesan, faktor yang paling berpengaruh adalah bakat alami, sehingga saat seseorang tidak mampu meraih kesuksesan, hal tersebut dirasa karena tidak mempunyai bakal alami di suatu bidang. Akibat stigma dan prasangka tersebut, banyak orang yang mulai merasa pesimistis ketika tidak mampu meraih tujuan yang mereka inginkan, sehingga perasaan rendah diri pun langsung menguasai karena sepertinya sudah tidak ada harapan lagi untuk memiliki bakat.""",
    price: 'Rp 96.000',
    imgUrl: "images/pasion_dan_kegigihan.jpg",
    page: 440,
  ),
  Buku(
    title: "Harry Potter and the Prisoner of Azkaban",
    publisher: "Gramedia Pustaka Utama",
    broadcastDate: "26 Agt 2018",
    language: "ID",
    description:
        """“Akibat melakukan kekacauan sihir luar biasa, Harry Potter kabur dari keluarga Dursley dan Little Whinging naik Bus Ksatria. Ia mengira bakal mendapat hukuman berat. Namun, Kementerian Sihir punya masalah yang lebih gawat, Sirius Black, tawanan terkenal dan pengikut setia Lord Voldemort, melarikan diri dari penjara Azkaban.""",
    price: 'Rp 257.000',
    imgUrl: "images/harry_potter.jpg",
    page: 336,
  ),
  Buku(
    title: "Atomic Habits",
    publisher: "Gramedia Pustaka Utama",
    broadcastDate: "15 Sep 2019",
    language: "ID",
    description:
        """Atomic Habits: Perubahan Kecil yang Memberikan Hasil Luar Biasa adalah buku kategori self improvement karya James Clear. Pada umumnya, perubahan-perubahan kecil seringkali terkesan tak bermakna karena tidak langsung membawa perubahan nyata pada hidup suatu manusia. Jika diumpamakan sekeping koin tidak bisa menjadikan kaya, suatu perubahan positif seperti meditasi selama satu menit atau membaca buku satu halaman setiap hari mustahil menghasilkan perbedaan yang bisa terdeteksi. Namun hal tersebut tidak sejalan dengan pemikiran James Clear, ia merupakan seorang pakar dunia yang terkenal dengan 'habits' atau kebiasaan. Ia tahu bahwa tiap perbaikan kecil bagaikan menambahkan pasir ke sisi positif timbangan dan akan menghasilkan perubahan nyata yang berasal dari efek gabungan ratusan bahkan ribuan keputusan kecil. Ia menamakan perubahan kecil yang membawa pengaruh yang luar biasa dengan nama atomic habits.""",
    price: 'Rp 109.000',
    imgUrl: "images/atomic_habit.png",
    page: 356,
  ),
  Buku(
    title: "Harry Potter and the Prisoner of Azkaban",
    publisher: "Gramedia Pustaka Utama",
    broadcastDate: "26 Agt 2018",
    language: "ID",
    description:
        """“Akibat melakukan kekacauan sihir luar biasa, Harry Potter kabur dari keluarga Dursley dan Little Whinging naik Bus Ksatria. Ia mengira bakal mendapat hukuman berat. Namun, Kementerian Sihir punya masalah yang lebih gawat, Sirius Black, tawanan terkenal dan pengikut setia Lord Voldemort, melarikan diri dari penjara Azkaban.""",
    price: 'Rp 257.000',
    imgUrl: "images/harry_potter.jpg",
    page: 336,
  ),
  Buku(
    title: "kompilasi_tugas akhir",
    publisher: "Gramedia Pustaka Utama",
    broadcastDate: "20 Dec 2023",
    language: "ID",
    description:
        """Buku yang menjelaskan mengenai tugas akhir dari kampus stmik-likmi.""",
    price: 'Rp 120.900',
    imgUrl: "images/kompilasi_tugas akhir.jpg",
    page: 620,
  ),
];
