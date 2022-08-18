import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:pacman/Player/Pacsheet.dart';
import 'package:pacman/enemies/ghost.dart';

class Pac extends SimplePlayer with ObjectCollision {
  final int score = 0;

  Pac(Vector2 position)
      : super(
          position: position,
          animation: SimpleDirectionAnimation(
            idleLeft: Pacsheet.idleLeft,
            idleRight: Pacsheet.idleRight,
            runLeft: Pacsheet.runLeft,
            runRight: Pacsheet.runRight,
          ),
          size: Vector2(64.0, 64.0),
          speed: 200,
        ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(
          size: Vector2(18.0, 20.0),
          align: Vector2(24, 36),
        ),
      ]),
    );
  }
  @override
  bool onCollision(GameComponent component, bool active) {
    if (component is ghost) {
      die();
    }

    return super.onCollision(component, active);
  }

  @override
  void die() {
    removeFromParent();
    super.die();
  }
}
