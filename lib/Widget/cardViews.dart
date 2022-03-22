import 'package:flutter/material.dart';


class CardViews extends StatefulWidget {
  String url;
  String text;

  CardViews({
    Key? key,
    required this.url,
    required this.text,
  }) : super(key: key);

  @override
  State<CardViews> createState() => _CardViewsState();
}

class _CardViewsState extends State<CardViews> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: 300,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                widget.url,
                height: 70,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(widget.text),
            )
          ],
        ),
      ),
    );
  }
}
