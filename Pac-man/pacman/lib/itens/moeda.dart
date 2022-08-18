import 'package:bonfire/bonfire.dart';
import 'package:flutter/cupertino.dart';
import 'package:pacman/Player/Pac.dart';
import 'package:pacman/interface/PlayerUI.dart';
import 'package:pacman/itens/moedasheet.dart';

class Moeda extends GameDecoration with Sensor {
  Moeda(Vector2 position)
      : super.withAnimation(
          animation: moedasheet.idle,
          position: position,
          size: Vector2(16, 16),
        );

  @override
  void onContact(GameComponent component) {
    int _intervalCheckContact = 5;
    if (component is Pac) {
      component.score + 1;
      removeFromParent();
    }
  }
}
