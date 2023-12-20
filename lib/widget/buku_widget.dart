import 'package:flutter/material.dart';
import 'package:perpustakaan/model/buku.dart';
import 'package:perpustakaan/ui/detail_screen.dart';

class BookHorizontalListItem extends StatelessWidget {
  final Buku buku;

  const BookHorizontalListItem({Key? key, required this.buku})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailScreen(buku: buku)));
      },
      child: SizedBox(
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              width: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  buku.imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              buku.title,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xff333740)),
            ),
            Text(
              buku.price,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff828285),
                  fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
