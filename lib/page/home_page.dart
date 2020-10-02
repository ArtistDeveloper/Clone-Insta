import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
        ),
        body: Center(
          child: drawCard(),
        ));
  }

  Widget drawCard() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Card(
        elevation: 4.0,
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 80,
              height: 80,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://img.etoday.co.kr/pto_db/2017/11/400/20171114092528_1150866_700_526.PNG'
                ),
              ),
            ),

            Text('빌 게이츠'),

            RaisedButton(
              child: Text('팔로우'),
              color: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {},
            )
      ],
    )));
  }
}
