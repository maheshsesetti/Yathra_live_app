// To parse this JSON data, do
//
//     final company = companyFromJson(jsonString);

import 'dart:convert';

Company companyFromJson(String str) => Company.fromJson(json.decode(str));

String companyToJson(Company data) => json.encode(data.toJson());

class Company {
  final List<CompanyElement>? company;

  Company({
    this.company,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    company: json["company"] == null ? [] : List<CompanyElement>.from(json["company"]!.map((x) => CompanyElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "company": company == null ? [] : List<dynamic>.from(company!.map((x) => x.toJson())),
  };
}

class CompanyElement {
  final int? id;
  final String? name;
  final String? identity;
  final String? img;


  CompanyElement({
    this.id,
    this.name,
    this.identity,
    this.img,

  });

  factory CompanyElement.fromJson(Map<String, dynamic> json) => CompanyElement(
    id: json["id"],
    name: json["name"],
    identity: json["identity"],
    img: json["img"],

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "identity": identity,
    "img": img,

  };
}
