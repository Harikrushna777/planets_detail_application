class PlanetModal {
  final String name;
  final String position;
  final String velocity;
  final String distance;
  final String description;
  final String image;

  PlanetModal({
    required this.name,
    required this.position,
    required this.velocity,
    required this.distance,
    required this.description,
    required this.image,
  });

  factory PlanetModal.fromMap({required Map data}) {
    return PlanetModal(
      name: data['name'],
      position: data['position'],
      velocity: data['velocity'],
      distance: data['distance'],
      description: data['description'],
      image: data['image'],
    );
  }
}
