import 'package:bonfire/bonfire.dart';
import 'package:pacman/enemies/ghostsheet.dart';

class ghost extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  ghost(Vector2 position)
      : super(
          position: position,
          animation: SimpleDirectionAnimation(
            idleLeft: ghostsheet.idleLeft,
            idleRight: ghostsheet.idleRight,
            runLeft: ghostsheet.runLeft,
            runRight: ghostsheet.runRight,
          ),
          size: Vector2(64.0, 64.0),
          speed: 30,
        ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(
          size: Vector2(20.0, 20.0),
          align: Vector2(22, 32),
        ),
      ]),
    );
  }

  @override
  void update(double dt) {
    seePlayer(
      observed: (player) {
        seeAndMoveToPlayer(
          closePlayer: (player) {},
          margin: 0,
          radiusVision: 180,
          visionAngle: 360,
        );
      },
      notObserved: () {
        runRandomMovement(dt, speed: 30, timeKeepStopped: 0);
      },
      radiusVision: 180,
    );

    super.update(dt);
  }
}
