import 'package:bonfire/base/bonfire_game.dart';
import 'package:bonfire/bonfire.dart';
import 'package:bonfire/camera/bonfire_camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pacman/Player/Pac.dart';
import 'package:pacman/game.dart';
import 'package:pacman/itens/moeda.dart';
import 'dart:async' as async;

class PlayerUI extends StatefulWidget {
  static final overlaykey = 'playerInterface';
  final BonfireGame game;
  const PlayerUI({Key? key, required this.game}) : super(key: key);

  @override
  State<PlayerUI> createState() => _PlayerUIState();
}

class _PlayerUIState extends State<PlayerUI> {
  dynamic score = 0;
  late async.Timer _scoretime;

  @override
  void initState() {
    _scoretime =
        async.Timer.periodic(const Duration(milliseconds: 100), _verifymoeda);
    super.initState();
  }

  @override
  void dispose() {
    _scoretime.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void _verifymoeda(async.Timer timer) {}
}
