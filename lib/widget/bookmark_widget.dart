import 'package:flutter/material.dart';


class BookmarkWidget extends StatefulWidget {
  const BookmarkWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BookmarkWidget> createState() => _BookmarkWidgetState();
}

class _BookmarkWidgetState extends State<BookmarkWidget> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => setState(() {
          isBookmark = !isBookmark;
        }),
        child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF2F2F2)),
            child: Center(
                child: Icon(
                  Icons.bookmark,
                  color: isBookmark
                      ? const Color(0xff0D1630)
                      : const Color(0xffC1C1C1),
                ))));
  }
}

class BookmarkWidgetWeb extends StatefulWidget {
  const BookmarkWidgetWeb({
    Key? key,
  }) : super(key: key);

  @override
  State<BookmarkWidgetWeb> createState() => _BookmarkWidgetWebState();
}

class _BookmarkWidgetWebState extends State<BookmarkWidgetWeb> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => setState(() {
          isBookmark = !isBookmark;
        }),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              color: const Color(0xffF2F2F2),
              borderRadius: BorderRadius.circular(6)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.bookmark,
                  color: isBookmark
                      ? const Color(0xff0D1630)
                      : const Color(0xffC1C1C1)),
              const SizedBox(width: 4),
              const Text(
                "Bookmark",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff0D1630)),
              ),
            ],
          ),
        ));
  }
}