import 'dart:convert';

class PromotionModel {
  final String id;
  final String promotion;
  final String pathImage;
  final String member;
  PromotionModel({
    required this.id,
    required this.promotion,
    required this.pathImage,
    required this.member,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'promotion': promotion,
      'pathImage': pathImage,
      'member': member,
    };
  }

  factory PromotionModel.fromMap(Map<String, dynamic> map) {
    return PromotionModel(
      id: map['id'] ?? '',
      promotion: map['promotion'] ?? '',
      pathImage: map['pathImage'] ?? '',
      member: map['member'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PromotionModel.fromJson(String source) =>
      PromotionModel.fromMap(json.decode(source));
}
