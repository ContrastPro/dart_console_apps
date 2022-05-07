class Airline {
  Airline({
    required this.id,
    required this.name,
    required this.logo,
    required this.website,
    required this.averagePrice,
  });

  factory Airline.fromJson(Map<String, dynamic> json) {
    return Airline(
      id: json['id'],
      name: json['name'],
      logo: json['logo'],
      website: json['website'],
      averagePrice: json['averagePrice'],
    );
  }

  final int id;
  final String name;
  final String logo;
  final String website;
  final double averagePrice;
}