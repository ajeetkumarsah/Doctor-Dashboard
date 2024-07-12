class SpecializationModel {
  final String? id;
  final String? name;
  final List<IconModel> icons;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  SpecializationModel({
    this.id,
    this.name,
    required this.icons,
    this.createdAt,
    this.updatedAt,
  });

  factory SpecializationModel.fromJson(Map<String, dynamic> json) =>
      SpecializationModel(
        id: json["_id"],
        name: json["name"],
        icons: json["icons"] == null
            ? []
            : List<IconModel>.from(
                json["icons"]!.map((x) => IconModel.fromJson(x))),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "icons": List<dynamic>.from(icons.map((x) => x.toJson())),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class IconModel {
  final String? id;
  final String? path;
  final String? url;

  IconModel({
    this.id,
    this.path,
    this.url,
  });

  factory IconModel.fromJson(Map<String, dynamic> json) => IconModel(
        id: json["_id"],
        path: json["path"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "path": path,
        "url": url,
      };
}
