//ハンマー・クラス
class Hammer extends Sprite {
  //コンストラクタ
  Hammer(PImage image) {
    super(image);          //親クラスのコンストラクタをそのまま使う
  }
  
  //移動(オーバーライド)
  void move() {
    x = mouseX;
    y = mouseY;
  }
}
