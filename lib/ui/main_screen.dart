import 'package:flutter/material.dart';
import 'package:perpustakaan/model/buku.dart';
import 'package:perpustakaan/utility/util.dart';
import 'package:perpustakaan/widget/buku_widget.dart';


Buku daftarbuku = bukuList.last;

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            toolbarHeight: 75,
            backgroundColor: Colors.blue,
            foregroundColor: const Color(0xff333740),
            title: const Text(
              "Perpustakaan",
              style: TextStyle(
                  fontFamily: 'Poppins', fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
          body:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth <= 600) {
                      return const MainMobile();
                  } else {
                      return const MainWeb(gridItem: 8,);
                  }
                },
          ),
            )
          ),
        );
      },
    );
  }
}

class MainMobile extends StatelessWidget {

  final String terbaru = 'Baru dan Terkemuka';
  final String keluarga = 'Keseruan Untuk Keluarga';
  final String segera = 'Akan Segera Dirilis';

  const MainMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 14),
        ListBook(terbaru, 5),
        const SizedBox(height: 14,),
        ListBook(keluarga, 5),
        const SizedBox(height: 14,),
        ListBook(segera, 5),
      ],
    );
  }
}

class  MainWeb extends StatelessWidget {

  final int gridItem;

  final String terbaru = 'Baru dan Terkemuka';
  final String keluarga = 'Keseruan Untuk Keluarga';
  final String segera = 'Akan Segera Dirilis';

  const MainWeb({
    Key? key, required this.gridItem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 14),
          ListBook(terbaru, gridItem),
          const SizedBox(height: 14),
          ListBook(keluarga, gridItem),
          const SizedBox(height: 14),
          ListBook(segera, gridItem),
        ]);
  }
}

class ListBook extends StatelessWidget {

  final String subTitle;
  final int gridItem;

  const ListBook(this.subTitle, this.gridItem, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Text(
              subTitle,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            SizedBox(width: screenWidth >= 600 ? 200 : 0),
            InkWell(
              onTap: () => showToast(context, "Lihat Semua Buku $subTitle"),
              child: const Text(
                "Lihat Semua",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color(0xff828285)),
              ),
            ),
            const SizedBox(),
          ],
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 260,
          child: ListView.separated(
              shrinkWrap: true,
              itemCount: gridItem,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                List<Buku> items = bukuList..shuffle();
                return BookHorizontalListItem(buku: items[index]);
              },
              separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(width: 8)),
        ),
      ],
    );
  }
}



