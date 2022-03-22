
import 'dart:convert';

List<TwoWheeler> twoWheelerFromJson(String str) => List<TwoWheeler>.from(json.decode(str).map((x) => TwoWheeler.fromJson(x)));

String twoWheelerToJson(List<TwoWheeler> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TwoWheeler {
    TwoWheeler({
       required this.name,
      required  this.image,
        
    });

    String name;
    String image;
    

    factory TwoWheeler.fromJson(Map<String, dynamic> json) => TwoWheeler(
        name: json["Name"],
        image: json["Image"],
        
    );

    Map<String, dynamic> toJson() => {
        "Name": name,
        "Image": image,
        
    };
}
