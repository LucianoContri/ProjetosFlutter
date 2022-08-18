import 'package:bonfire/bonfire.dart';

class moedasheet {
  static get idle => SpriteAnimation.load(
        'player/MonedaD.png',
        SpriteAnimationData.sequenced(
          amount: 5,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
          amountPerRow: 5,
        ),
      );
}
