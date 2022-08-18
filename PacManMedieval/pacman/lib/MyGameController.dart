import 'package:bonfire/base/game_component.dart';
import 'package:flutter/material.dart';
import 'package:pacman/game.dart';
import 'package:pacman/itens/moeda.dart';
import 'package:pacman/main.dart';

class MyGameController extends GameComponent {
  bool gameover = false;
  bool ganhou = false;
  final int stage;
  MyGameController(this.stage);

  @override
  void update(double dt) {
    if (checkInterval('score', 500, dt)) {
      if (gameRef.decorations().isEmpty && !ganhou) {
        ganhou = true;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("You Win!"),
              actions: [
                TextButton(
                  onPressed: () {
                    _goStage(1);
                  },
                  child: Text("Play Again"),
                )
              ],
            );
          },
        );
      }
    }

    if (checkInterval('game over', 500, dt)) {
      if (gameRef.player!.isDead && !gameover && !ganhou) {
        gameover = true;
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("Game Over!"),
              actions: [
                TextButton(
                  onPressed: () {
                    _goStage(1);
                  },
                  child: Text("Try Again"),
                )
              ],
            );
          },
        );
      }
    }

    super.update(dt);
  }

  void _goStage(int newStage) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return Game(stage: newStage);
    }), (route) => false);
  }
}
