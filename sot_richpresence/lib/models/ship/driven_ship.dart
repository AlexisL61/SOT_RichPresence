import 'package:sot_richpresence/models/ship/ship.dart';
import 'package:sot_richpresence/models/ship/ship_type.dart';

class DrivenShip extends Ship{
  final int players;

  DrivenShip({required String name, required ShipType type, required this.players, required int maxPlayers}) : super(name: name, type: type, maxPlayers: maxPlayers);
}