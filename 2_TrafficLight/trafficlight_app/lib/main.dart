import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'src/dialogs/confirm_dialog.dart';
import 'src/pages/traffic_lights.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traffic Light App',
      home: MyFirstPage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyFirstPage extends StatelessWidget {
  MyFirstPage({Key? key}) : super(key: key);

  final _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("This is Traffic Light screen."),
        ),
        drawer: Text('this is drawer'),
        body: Center(
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text('How many lights do you want to show up?')),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: TextField(
                    controller: _myController,
                    style: TextStyle(fontSize: 13),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter the number',
                        hintText: '3'),
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ]),
              ),
              ElevatedButton(
                  onPressed: () {
                    _myController.text != ''
                        // Exists The Number of lights
                        ? showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return ConfirmDialog(
                                  title: 'Would you like to proceed?',
                                  buttonCnt: 2,
                                  buttonTexts: ['Yes', 'No']);
                            }).then((value) => {
                              if (value == 'Yes')
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TrafficLights(
                                          int.parse(_myController.text))),
                                )
                            })
                        // Not exist The number of lights
                        : showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext ctx) {
                              return ConfirmDialog(
                                  title: 'Warning',
                                  content: 'Please, Enter number of lights',
                                  buttonCnt: 1,
                                  buttonTexts: ['Ok']);
                            });
                  },
                  child: Text('Submit'))
            ],
          ),
        ));
  }
}
