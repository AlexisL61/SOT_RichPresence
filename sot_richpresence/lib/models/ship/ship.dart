import 'package:sot_richpresence/models/ship/driven_ship.dart';
import 'package:sot_richpresence/models/ship/ship_type.dart';

class Ship {
  static final List<Ship> ships = [
    Ship(name: "sloop", type: ShipType.Sloop, maxPlayers: 2),
    Ship(name: "brigantine", type: ShipType.Brigantine, maxPlayers: 3),
    Ship(name: "galleon", type: ShipType.Galleon, maxPlayers: 4),
  ];

  final String name;
  final ShipType type;
  final int maxPlayers;

  Ship({required this.name, required this.type, this.maxPlayers = 4});

  DrivenShip toDrivenShip(int players) {
    return DrivenShip(name: name, type: type, players: players);
  }
}
