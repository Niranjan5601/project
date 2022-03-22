import 'package:flutter/material.dart';

import '../Api/remote_service.dart';
import '../Model/four_wheeler.dart';
import '../Widget/cardViews.dart';
import 'finalpage.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<FourWheeler>? fourwheeler;
  var isLoaded = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    fourwheeler = await FourWheelerService().getFourWheeler();
    if (fourwheeler != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
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
              itemCount: fourwheeler?.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Finalpage(),
                      ),
                    );
                  },
                  child: CardViews(
                      url: fourwheeler![index].image,
                      text: fourwheeler![index].name),
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
