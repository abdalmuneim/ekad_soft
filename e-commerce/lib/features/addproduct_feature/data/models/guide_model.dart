class GuideModel {
  int? id;
  String? guide;
  String? guideQuantity;

  GuideModel({this.id, required this.guide, required this.guideQuantity});

  GuideModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    guide = json['guide'];
    guideQuantity = json['guideQuantity'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['guide'] = guide;
    data['guideQuantity'] = guideQuantity;
    return data;
  }
}
