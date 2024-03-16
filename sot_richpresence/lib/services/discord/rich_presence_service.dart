import 'package:dart_discord_rpc/dart_discord_rpc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sot_richpresence/models/user_data/user_data.dart';

class RichPresenceService {
  static const String _clientId = '992744165802782741';

  static late DiscordRPC _discordRPC;

  static void initialize() {
    _discordRPC = DiscordRPC(applicationId: _clientId);
    _discordRPC.start(autoRegister: true);
    //updateRpc();
  }

  static void rpcForShipOnly() {
    _discordRPC.updatePresence(DiscordPresence(
      details: tr("_ship_rpc_no_activity"),
      state: tr("_ship_rpc", namedArgs: {
        "ship": tr(UserData().drivenShip!.name),
        "players": UserData().drivenShip!.players.toString(),
        "maxPlayers": UserData().drivenShip!.maxPlayers.toString()
      }),
      largeImageKey: "sloop",
      startTimeStamp: DateTime.now().millisecondsSinceEpoch,
    ));
  }

  static void updateRpc() {
    if (UserData().activity == null && UserData().drivenShip == null) {
      _discordRPC.clearPresence();
    } else {
      if (UserData().activity == null && UserData().drivenShip != null) {
        print("RPC for ship only");
        rpcForShipOnly();
      } else {}
    }
  }
}
