import 'package:flutter/material.dart';

import 'block.dart';
import 'tile.dart';

class IBlock extends Block {
  IBlock(int width) {
    tiles[0] = Tile((width / 2 - 2).floor(), -1);
    tiles[1] = Tile((width / 2 - 1).floor(), -1);
    tiles[2] = Tile((width / 2 + 0).floor(), -1);
    tiles[3] = Tile((width / 2 + 1).floor(), -1);
    rotationCenter = tiles[1];
    color = Colors.orange;
  }
}

class UltaTBlock extends Block {
  UltaTBlock(int width) {
    tiles[0] = Tile((width / 2 - 1).floor(), 0);
    tiles[1] = Tile((width / 2 + 0).floor(), 0);
    tiles[2] = Tile((width / 2 + 1).floor(), 0);
    tiles[3] = Tile((width / 2 + 0).floor(), -1);
    rotationCenter = tiles[1];
    color = Colors.red;
  }
}

class SquareBlock extends Block {
  SquareBlock(int width) {
    tiles[0] = Tile((width / 2 + 0).floor(), -1);
    tiles[1] = Tile((width / 2 + 1).floor(), -1);
    tiles[2] = Tile((width / 2 + 0).floor(), 0);
    tiles[3] = Tile((width / 2 + 1).floor(), 0);
    rotationCenter = tiles[1];
    color = Colors.blue;
  }
}

class SidhaLBlock extends Block {
  SidhaLBlock(int width) {
    tiles[0] = Tile((width / 2 - 1).floor(), -1);
    tiles[1] = Tile((width / 2 - 1).floor(), 0);
    tiles[2] = Tile((width / 2 + 0).floor(), 0);
    tiles[3] = Tile((width / 2 + 1).floor(), 0);
    rotationCenter = tiles[2];
    color = Colors.yellow;
  }
}

class UltaLBlock extends Block {
  UltaLBlock(int width) {
    tiles[0] = Tile((width / 2 - 1).floor(), 0);
    tiles[1] = Tile((width / 2 + 0).floor(), 0);
    tiles[2] = Tile((width / 2 + 1).floor(), 0);
    tiles[3] = Tile((width / 2 + 1).floor(), -1);
    rotationCenter = tiles[1];
    color = Colors.pink;
  }
}

class ZBlock extends Block {
  ZBlock(int width) {
    tiles[0] = Tile((width / 2 - 1).floor(), 0);
    tiles[1] = Tile((width / 2 + 0).floor(), 0);
    tiles[0] = Tile((width / 2 + 0).floor(), -1);
    tiles[0] = Tile((width / 2 + 1).floor(), -1);
    rotationCenter = tiles[1];
    color = Colors.green;
  }
}

class SBlock extends Block {
  SBlock(int width) {
    tiles[0] = Tile((width / 2 - 1).floor(), -1);
    tiles[1] = Tile((width / 2 + 0).floor(), -1);
    tiles[2] = Tile((width / 2 + 0).floor(), 0);
    tiles[3] = Tile((width / 2 + 1).floor(), 0);
    rotationCenter = tiles[1];
    color = Colors.deepPurpleAccent;
  }
}
