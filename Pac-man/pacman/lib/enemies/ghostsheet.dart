import 'package:bonfire/bonfire.dart';

class ghostsheet {
  static get idleRight => SpriteAnimation.load(
        'player/slime.png',
        SpriteAnimationData.sequenced(
          amount: 4,
          stepTime: 0.1,
          textureSize: Vector2(32, 32),
          amountPerRow: 4,
        ),
      );

  static get idleLeft => SpriteAnimation.load(
      'player/slimeLeft.png',
      SpriteAnimationData.range(
        start: 3,
        end: 6,
        amount: 35,
        amountPerRow: 7,
        stepTimes: [0.1, 0.1, 0.1, 0.1, 0.1, 0.1],
        textureSize: Vector2(32, 32),
      ));

  static get runRight => SpriteAnimation.load(
      'player/slime.png',
      SpriteAnimationData.range(
        start: 7,
        end: 12,
        amount: 35,
        amountPerRow: 7,
        stepTimes: [0.1, 0.1, 0.1, 0.1, 0.1, 0.1],
        textureSize: Vector2(32, 32),
      ));

  static get runLeft => SpriteAnimation.load(
      'player/slimeLeft.png',
      SpriteAnimationData.range(
        start: 8,
        end: 13,
        amount: 35,
        amountPerRow: 7,
        stepTimes: [0.1, 0.1, 0.1, 0.1, 0.1, 0.1],
        textureSize: Vector2(32, 32),
      ));
}
