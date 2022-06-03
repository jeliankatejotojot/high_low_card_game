import 'dart:math';

class CardValue {
  int randomIndex = 0;
  List faces = [
    ['cards/2C.png', 2],
    ['cards/2D.png', 2],
    ['cards/2H.png', 2],
    ['cards/2S.png', 2],
    ['cards/3C.png', 3],
    ['cards/3D.png', 3],
    ['cards/3H.png', 3],
    ['cards/3S.png', 3],
    ['cards/4C.png', 4],
    ['cards/4D.png', 4],
    ['cards/4H.png', 4],
    ['cards/4S.png', 4],
    ['cards/5C.png', 5],
    ['cards/5D.png', 5],
    ['cards/5H.png', 5],
    ['cards/5S.png', 5],
    ['cards/6C.png', 6],
    ['cards/6D.png', 6],
    ['cards/6H.png', 6],
    ['cards/6S.png', 6],
    ['cards/7C.png', 7],
    ['cards/7D.png', 7],
    ['cards/7H.png', 7],
    ['cards/7S.png', 7],
    ['cards/8C.png', 8],
    ['cards/8D.png', 8],
    ['cards/8H.png', 8],
    ['cards/8S.png', 8],
    ['cards/9C.png', 9],
    ['cards/9D.png', 9],
    ['cards/9H.png', 9],
    ['cards/9S.png', 9],
    ['cards/10C.png', 10],
    ['cards/10D.png', 10],
    ['cards/10H.png', 10],
    ['cards/10S.png', 10],
    ['cards/AC.png', 1],
    ['cards/AD.png', 1],
    ['cards/AH.png', 1],
    ['cards/AS.png', 1],
    ['cards/JC.png', 11],
    ['cards/JD.png', 11],
    ['cards/JH.png', 11],
    ['cards/JS.png', 11],
    ['cards/QC.png', 12],
    ['cards/QD.png', 12],
    ['cards/QH.png', 12],
    ['cards/QS.png', 12],
    ['cards/KC.png', 13],
    ['cards/KD.png', 13],
    ['cards/KH.png', 13],
    ['cards/KS.png', 13],
  ];

  List getRandom() {
    randomIndex = Random().nextInt(13 * 4);
    return [faces[randomIndex][0], faces[randomIndex][1]];
  }
}
