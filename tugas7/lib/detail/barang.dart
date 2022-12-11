class Barang {
  final int? id;
  final String name;
  final String description;
  final int quantity;

  Barang(
      {this.id,
      required this.name,
      required this.description,
      this.quantity = 1});

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'quantity': quantity,
    };
  }

  factory Barang.fromMap(Map<String, Object?> map) {
    return Barang(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      quantity: map['quantity'] as int,
    );
  }
}
