// To parse this JSON data, do
//
//     final mainData = mainDataFromJson(jsonString);

import 'dart:convert';

List<MainData> mainDataFromJson(String str) => List<MainData>.from(json.decode(str).map((x) => MainData.fromJson(x)));

String mainDataToJson(List<MainData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MainData {
    MainData({
      required  this.name,
      required  this.image,
        
    });

    String name;
    String image;
   

    factory MainData.fromJson(Map<String, dynamic> json) => MainData(
        name: json["Name"],
        image: json["Image"],
        
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Image": image,
        
    };
}
