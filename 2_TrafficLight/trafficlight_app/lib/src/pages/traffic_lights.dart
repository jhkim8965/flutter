import 'package:flutter/material.dart';

class TrafficLights extends StatelessWidget {
  final int lightCnt;

  TrafficLights(this.lightCnt);

  @override
  Widget build(BuildContext context) {
    List<Container> containers = [];
    Color color = Colors.black;

    for (var iCnt = 0; iCnt < lightCnt; ++iCnt) {
      switch (iCnt % 3) {
        case 0:
          color = Colors.red;
          break;
        case 1:
          color = Colors.orange;
          break;
        case 2:
          color = Colors.blue;
          break;
      }

      containers.add(Container(
        color: color,
        width: 100,
        height: 100,
        child: Center(child: Text('No. $iCnt')),
      ));
    }
    return Scaffold(
        appBar: AppBar(
            //title: Text("This is Traffic Light screen(2)."),
            ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Wrap(
            children: [
              SizedBox(
                // height: MediaQuery.of(context).size.height,
                height: 500,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Wrap(
                    children: containers,
                    spacing: 5, // 가로축 간격
                    runSpacing: 5,
                  ),
                ),
              ),
              Align(
                  alignment: FractionalOffset(1.0, 0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Go back')))
            ],
            spacing: 5, // 가로축 간격
            runSpacing: 5, // 세로축 간격
          ),
        ));
  }
}
