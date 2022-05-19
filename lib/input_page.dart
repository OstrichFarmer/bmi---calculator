import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: const Color(0xFF1d1f33),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: const Color(0xFF1d1f33),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            )),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: const Color(0xFF1d1f33),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: const Color(0xFF1d1f33),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: const Color(0xFF1d1f33),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ))
          ],
        ));
  }
}
