import 'package:dart_discord_rpc/dart_discord_rpc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:sot_richpresence/models/user_data/user_data.dart';
import 'package:sot_richpresence/services/translations/translations_service.dart';

class RichPresenceService {
  static const String _clientId = '992744165802782741';

  static late DiscordRPC _discordRPC;

  static void initialize() {
    _discordRPC = DiscordRPC(applicationId: _clientId);
    _discordRPC.start(autoRegister: true);
  }

  static void rpcForShipOnly() {
    _discordRPC.updatePresence(DiscordPresence(
      details: tr("_ship_rpc_no_activity"),
      state: tr("_ship_rpc", namedArgs: {
        "ship": tr(UserData().drivenShip!.name),
        "players": UserData().drivenShip!.players.toString(),
        "max_players": UserData().drivenShip!.maxPlayers.toString()
      }),
      smallImageKey: UserData().drivenShip!.name,
      smallImageText: tr(UserData().drivenShip!.name),
      startTimeStamp: DateTime.now().millisecondsSinceEpoch,
    ));
  }

  static void rpcForAll() {
    _discordRPC.updatePresence(DiscordPresence(
      details: onlineTr(UserData().activity!.rpc),
      state: tr("_ship_rpc", namedArgs: {
        "ship": tr(UserData().drivenShip!.name),
        "players": UserData().drivenShip!.players.toString(),
        "max_players": UserData().drivenShip!.maxPlayers.toString(),
      }),
      smallImageKey: UserData().drivenShip!.name,
      smallImageText: tr(UserData().drivenShip!.name),
      largeImageKey: UserData().activity!.name,
      largeImageText: onlineTr(UserData().activity!.name),
      startTimeStamp: DateTime.now().millisecondsSinceEpoch,
    ));
  }

  static void rpcForActivityOnly() {
    _discordRPC.updatePresence(DiscordPresence(
      details: onlineTr(UserData().activity!.rpc),
      largeImageKey: UserData().activity!.name,
      largeImageText: onlineTr(UserData().activity!.name),
      startTimeStamp: DateTime.now().millisecondsSinceEpoch,
    ));
  }

  static void updateRpc() {
    if (UserData().activity == null && UserData().drivenShip == null) {
      _discordRPC.clearPresence();
    } else {
      if (UserData().activity == null && UserData().drivenShip != null) {
        rpcForShipOnly();
      } else {
        if (UserData().activity != null && UserData().drivenShip != null) {
          rpcForAll();
        } else {
          if (UserData().activity != null && UserData().drivenShip == null) {
            rpcForActivityOnly();
          }
        }
      }
    }
  }
}
