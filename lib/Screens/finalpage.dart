import 'package:flutter/material.dart';

class Finalpage extends StatelessWidget {
  const Finalpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Final page")),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: Container(
                height: 300,
                width: 500,
                alignment: Alignment.center,
                color: Colors.green,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Container(
                  height: 300,
                  width: 500,
                  alignment: Alignment.center,
                  color: Colors.green,
                  child: const Text('Hello'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
