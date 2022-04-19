import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool swing = false;
  bool wet = false;
  bool sleep = true;
  bool lorry = false;
  bool toy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 20,
        backgroundColor: Colors.red,
        title: Text('Julla Control'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: Text(
                    "Swing Mode",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: FlutterSwitch(
                    width: 55.0,
                    height: 30.0,
                    valueFontSize: 10.0,
                    toggleSize: 10.0,
                    value: swing,
                    borderRadius: 30.0,
                    padding: 8.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        swing = val;
                      });
                    }),
              ),
            ],
          ),
          const Divider(thickness: 2, height: 20, color: Color(0xffdee2e6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: const Text(
                    "Wet Detection",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: wet
                    ? Container(
                        padding: EdgeInsets.all(5),
                        child: const Center(
                            child: Text('Wet',
                                style: TextStyle(color: Colors.white))),
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      )
                    : Container(
                        padding: EdgeInsets.all(5),
                        child: const Center(
                            child: Text('Dry',
                                style: TextStyle(color: Colors.white))),
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                      ),
              ),
            ],
          ),
          const Divider(thickness: 2, height: 20, color: Color(0xffdee2e6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: const Text(
                    "Cry Detection",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: wet
                    ? Container(
                        padding: EdgeInsets.all(5),
                        child: const Center(
                            child: Text('Cry',
                                style: TextStyle(color: Colors.white))),
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red,
                        ),
                      )
                    : Container(
                        padding: EdgeInsets.all(5),
                        child: const Center(
                            child: Text('No Cry',
                                style: TextStyle(color: Colors.white))),
                        height: 30,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                      ),
              ),
            ],
          ),
          const Divider(thickness: 2, height: 20, color: Color(0xffdee2e6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: const Text(
                    "Sleep Mode",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: FlutterSwitch(
                    width: 55.0,
                    height: 30.0,
                    valueFontSize: 10.0,
                    toggleSize: 10.0,
                    value: sleep,
                    borderRadius: 30.0,
                    padding: 8.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        sleep = val;
                      });
                    }),
              ),
            ],
          ),
          const Divider(thickness: 2, height: 20, color: Color(0xffdee2e6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: const Text(
                    "Lorry Mode",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: FlutterSwitch(
                    width: 55.0,
                    height: 30.0,
                    valueFontSize: 10.0,
                    toggleSize: 10.0,
                    value: lorry,
                    borderRadius: 30.0,
                    padding: 8.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        lorry = val;
                      });
                    }),
              ),
            ],
          ),
          const Divider(thickness: 2, height: 20, color: Color(0xffdee2e6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: const Text(
                    "Play Toy",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                child: FlutterSwitch(
                    width: 55.0,
                    height: 30.0,
                    valueFontSize: 10.0,
                    toggleSize: 10.0,
                    value: toy,
                    borderRadius: 30.0,
                    padding: 8.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        toy = val;
                      });
                    }),
              ),
            ],
          ),
          const Divider(thickness: 2, height: 20, color: Color(0xffdee2e6)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                  child: MaterialButton(
                    onPressed: () => {print('pressed')},
                    child: const Text(
                      "Check Weight",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: const Center(
                        child: Text('10' + 'Kg',
                            style: TextStyle(color: Colors.white))),
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                  )),
            ],
          ),
          const Divider(thickness: 2, height: 20, color: Color(0xffdee2e6)),
        ],
      ),
    );
  }
}
