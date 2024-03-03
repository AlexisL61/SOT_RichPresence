enum ShipType {
  Sloop,
  Brigantine,
  Galleon,
}

extension ShipTypeExtension on ShipType {
  String get image {
    switch (this) {
      case ShipType.Sloop:
        return 'assets/icons/sloop.svg';
      case ShipType.Brigantine:
        return 'assets/icons/brigantine.svg';
      case ShipType.Galleon:
        return 'assets/icons/galleon.svg';
    }
  }
}