import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pacman/MyGameController.dart';
import 'package:pacman/Player/Pac.dart';
import 'package:pacman/enemies/ghost.dart';
import 'package:pacman/interface/PlayerUI.dart';
import 'package:pacman/itens/moeda.dart';

class Game extends StatefulWidget {
  final int stage;
  final int score;
  const Game({Key? key, this.stage = 1, this.score = 0}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(directional: JoystickDirectional()),
      map: TiledWorldMap('map/map.json',
          forceTileSize: Size(32, 32),
          objectsBuilder: {
            'ghost': (properties) => ghost(properties.position),
            'moeda': (properties) => Moeda(properties.position),
          }),
      player: Pac(Vector2(10 * 32, 3 * 32)),
      overlayBuilderMap: {
        PlayerUI.overlaykey: (context, game) => PlayerUI(
              game: game,
            )
      },
      initialActiveOverlays: [
        PlayerUI.overlaykey,
      ],
      components: [MyGameController(widget.stage)],
      cameraConfig: CameraConfig(
        moveOnlyMapArea: true,
        zoom: 1.2,
      ),
      showCollisionArea: false,
    );
  }

  @override
  void changeCountLiveEnemies(int count) {
    // TODO: implement changeCountLiveEnemies
  }
}
