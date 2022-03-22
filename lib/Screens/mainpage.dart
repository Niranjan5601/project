import 'package:flutter/material.dart';
import 'package:motor_app/Screens/fourwheelerpage.dart';
import 'package:motor_app/Widget/cardViews.dart';

import '../Api/remote_service.dart';
import '../Model/model.dart';
import 'twowheelerpage.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List<MainData>? mainData;
  var isLoaded = false;
  @override
  void initState() {
    getData();
    
    super.initState();
  }

  getData() async {
    mainData = await MainDataService().getMainData();
    if (mainData != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Name'),
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
              itemCount: mainData?.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Page2(),
                      ),
                    );
                  },
                  child: CardViews(
                      url: mainData![index].image, text: mainData![index].name),
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
