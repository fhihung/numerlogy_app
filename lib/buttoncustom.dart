import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String textButton;
  final String titleText;
  final String subText;
  final VoidCallback pressAction;

  ButtonCustom(this.titleText, this.textButton, this.subText, this.pressAction);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 255, 201, 136),
          onPrimary: Color(0xFFFEFCF3),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 60,
                child: ListTile(
                  title: Text(titleText),
                  subtitle: Text(subText),
                ),
                // padding: EdgeInsets.all(40),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 40),
              child: Text(
                textButton,
                style: TextStyle(fontSize: 20, fontFamily: 'Inter'),
              ),
            ),
          ],
        ),
        onPressed: () {});
  }
}
