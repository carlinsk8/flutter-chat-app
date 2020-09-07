import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String text1;
  final String text2;
  final Function onTap;

  const Labels({
    Key key,
    this.text1,
    this.text2,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (this.text1 != null && this.text1 != '')
            Text(
              this.text1,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          if (this.text1 != null && this.text1 != '') SizedBox(height: 10),
          if (this.text2 != null && this.text2 != '')
            GestureDetector(
              onTap: this.onTap,
              child: Text(
                this.text2,
                style: TextStyle(
                  color: Colors.blue[600],
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
