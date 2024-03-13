import 'package:sot_richpresence/models/ship/driven_ship.dart';
import 'package:sot_richpresence/models/ship/ship_type.dart';

class Ship {
  static final List<Ship> ships = [
    Ship(name: "Sloop", type: ShipType.Sloop),
    Ship(name: "Brigantine", type: ShipType.Brigantine),
    Ship(name: "Galleon", type: ShipType.Galleon),
  ];

  final String name;
  final ShipType type;

  Ship({required this.name, required this.type});

  DrivenShip toDrivenShip(int players) {
    return DrivenShip(name: name, type: type, players: players);
  }
}
