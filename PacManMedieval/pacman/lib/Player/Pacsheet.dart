import 'package:bonfire/bonfire.dart';

class Pacsheet {
  static get idleRight => SpriteAnimation.load(
        'player/player.png',
        SpriteAnimationData.sequenced(
          amount: 6,
          stepTime: 0.1,
          textureSize: Vector2(48, 48),
          amountPerRow: 6,
        ),
      );

  static get idleLeft => SpriteAnimation.load(
        'player/playerLeft.png',
        SpriteAnimationData.sequenced(
            amount: 6,
            stepTime: 0.1,
            textureSize: Vector2(48, 48),
            amountPerRow: 6),
      );

  static get runRight => SpriteAnimation.load(
      'player/player.png',
      SpriteAnimationData.range(
        start: 6,
        end: 11,
        amount: 30,
        amountPerRow: 6,
        stepTimes: [0.1, 0.1, 0.1, 0.1, 0.1, 0.1],
        textureSize: Vector2(48, 48),
      ));

  static get runLeft => SpriteAnimation.load(
      'player/playerLeft.png',
      SpriteAnimationData.range(
        start: 6,
        end: 11,
        amount: 30,
        amountPerRow: 6,
        stepTimes: [0.1, 0.1, 0.1, 0.1, 0.1, 0.1],
        textureSize: Vector2(48, 48),
      ));
}
