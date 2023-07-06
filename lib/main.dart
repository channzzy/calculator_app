import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String screenText = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            color: Theme.of(context).primaryColor,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                screenText,
                style: Theme.of(context)
                    .textTheme
                    .headline2!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color.fromARGB(255, 242, 242, 242),
            ),
            child: GridView.count(
              padding: EdgeInsets.all(0),
              shrinkWrap: true,
              crossAxisCount: 4,
              children: <Widget>[
                CalculatorButton(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  foregroundColor: Color.fromARGB(255, 52, 251, 214),
                  text: 'C',
                  onTap: () {
                    setState(() {
                      screenText = '0';
                    });
                  },
                ),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 52, 251, 214),
                    text: '+/-',
                    onTap: () {}),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 52, 251, 214),
                    text: '%',
                    onTap: () {}),
                CalculatorButton.icon(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 235, 102, 102),
                    text: 'Backspace',
                    icon: Icons.backspace,
                    onTap: () {
                      setState(() {
                        if (screenText == '0' ||
                            screenText == '' ||
                            screenText.length == 1) {
                          screenText = '0';
                        } else {
                          screenText =
                              screenText.substring(0, screenText.length - 1);
                        }
                      });
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '7',
                    onTap: () {
                      pressNumber(7);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '8',
                    onTap: () {
                      pressNumber(8);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '9',
                    onTap: () {
                      pressNumber(9);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 235, 102, 102),
                    text: '/',
                    onTap: () {}),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '4',
                    onTap: () {
                      pressNumber(4);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '5',
                    onTap: () {
                      pressNumber(5);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '6',
                    onTap: () {
                      pressNumber(6);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 235, 102, 102),
                    text: 'x',
                    onTap: () {}),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '1',
                    onTap: () {
                      pressNumber(1);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '2',
                    onTap: () {
                      pressNumber(2);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '3',
                    onTap: () {
                      pressNumber(3);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 235, 102, 102),
                    text: '-',
                    onTap: () {}),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '0',
                    onTap: () {
                      pressNumber(0);
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '.',
                    onTap: () {
                      setState(() {
                        if (!screenText.contains('.')) {
                          screenText = '$screenText.';
                        }
                      });
                    }),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Theme.of(context).primaryColorDark,
                    text: '=',
                    onTap: () {}),
                CalculatorButton(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: Color.fromARGB(255, 235, 102, 102),
                    text: '+',
                    onTap: () {
                      setState(() {});
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }

  void pressNumber(int number) {
    setState(() {
      if (screenText == '0') {
        screenText = '$number';
      } else {
        screenText = '$screenText$number';
      }
    });
  }
}

class CalculatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  IconData? icon;
  final void Function() onTap;

  CalculatorButton({
    Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  CalculatorButton.icon({
    Key? key,
    required this.backgroundColor,
    required this.foregroundColor,
    this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: backgroundColor,
            ),
            child: Center(
                child: icon == null
                    ? Text(
                        text,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                            color: foregroundColor,
                            fontWeight: FontWeight.bold),
                      )
                    : Icon(
                        icon,
                        color: foregroundColor,
                      )),
          ),
        ));
  }
}
