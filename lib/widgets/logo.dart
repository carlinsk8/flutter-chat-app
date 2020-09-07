import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String title;
  final String image;

  const Logo({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Image(
              image: AssetImage(this.image),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              this.title,
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
