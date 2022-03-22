import 'dart:convert';

List<FourWheeler> fourWheelerFromJson(String str) => List<FourWheeler>.from(
    json.decode(str).map((x) => FourWheeler.fromJson(x)));

String fourWheelerToJson(List<FourWheeler> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FourWheeler {
  FourWheeler({
    required this.name,
    required this.image,
    required this.type,
  });

  String name;
  String image;

  String type;

  factory FourWheeler.fromJson(Map<String, dynamic> json) => FourWheeler(
        name: json["Name"],
        image: json["Image"],
        type: json["Type"],
      );

  Map<String, dynamic> toJson() => {
        "Name": name,
        "Image": image,
        "Type": type,
      };
}
