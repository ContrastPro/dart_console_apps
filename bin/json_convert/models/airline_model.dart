class AirlineModel {
  AirlineModel({
    required this.id,
    required this.name,
    required this.country,
    required this.logo,
    required this.slogan,
    required this.website,
  });

  factory AirlineModel.fromJson(Map<String, dynamic> json) {
    return AirlineModel(
      id: json['id'],
      name: json['name'],
      country: json['country'],
      logo: json['logo'],
      slogan: json['slogan'],
      website: json['website'],
    );
  }

  final int id;
  final String name;
  final String country;
  final String logo;
  final String slogan;
  final String website;

  AirlineModel copyWith({
    int? id,
    String? name,
    String? country,
    String? logo,
    String? slogan,
    String? website,
  }) {
    return AirlineModel(
      id: id ?? this.id,
      name: name ?? this.name,
      country: country ?? this.country,
      logo: logo ?? this.logo,
      slogan: slogan ?? this.slogan,
      website: website ?? this.website,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'country': country,
      'logo': logo,
      'slogan': slogan,
      'website': website,
    };
  }
}
