import 'package:flutter/material.dart';
import 'package:tetris/game.dart';

import 'tile.dart';

class Block {
  List<Tile> tiles = List<Tile>(4);
  Tile rotationCenter;
  Color color;

  void move(moveBlock direction) {
    switch (direction) {
      case moveBlock.Left:
        tiles.forEach((t) => t.x -= 1);
        break;

      case moveBlock.Right:
        tiles.forEach((t) => t.x += 1);
        break;

      case moveBlock.Up:
        tiles.forEach((t) => t.y -= 1);
        break;

      case moveBlock.Down:
        tiles.forEach((t) => t.y += 1);
        break;
    }
  }

  void rotateRight() {
    tiles.forEach((tile) {
      int x = tile.x;
      tile.x = rotationCenter.x - tile.y + rotationCenter.y;
      tile.y = rotationCenter.y + x - rotationCenter.x;
    });
  }

  void rotateLeft() {
    tiles.forEach((tile) {
      int x = tile.x;
      tile.x = rotationCenter.x + tile.y - rotationCenter.y;
      tile.y = rotationCenter.y - x + rotationCenter.x;
    });
  }
}
