import 'dart:convert';

class WorkDetailsModel {
  final String iconPath;
  final String linkTitle;
  final String linkSubTitle;
  final String title;
  final String discription;
  final String webLink;
  final String markdownDisc;
  WorkDetailsModel({
    required this.iconPath,
    required this. linkTitle,
    required this.linkSubTitle,
    required this.title,
    required this.discription,
    required this.webLink,
    required this.markdownDisc
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iconPath': iconPath,
      'linkTitle': linkTitle,
      'linkSubTitle': linkSubTitle,
      'title': title,
      'discription': discription,
      'webLink': webLink,
      'markdownDisc': markdownDisc,
    };
  }

  factory WorkDetailsModel.fromMap(Map<String, dynamic> map) {
    return WorkDetailsModel(
      iconPath: map['iconPath'] as String,
      linkTitle: map['linkTitle'] as String,
      linkSubTitle: map['linkSubTitle'] as String,
      title: map['title'] as String,
      discription: map['discription'] as String,
      webLink: map['webLink'] as String,
      markdownDisc: map['markdownDisc'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WorkDetailsModel.fromJson(String source) => WorkDetailsModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
