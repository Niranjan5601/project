import 'package:flutter/material.dart';
import 'package:motor_app/Model/two_wheeler.dart';
import 'package:motor_app/Screens/finalpage.dart';

import '../Api/remote_service.dart';
import '../Widget/cardViews.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List<TwoWheeler>? twowheeler;
  var isLoaded = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    twowheeler = await TwoWheelerService().getTwoWheeler();
    if (twowheeler != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Visibility(
          visible: isLoaded,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemCount: twowheeler?.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Finalpage()));
                  },
                  child: CardViews(
                      url: twowheeler![index].image,
                      text: twowheeler![index].name),
                );
              }),
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
