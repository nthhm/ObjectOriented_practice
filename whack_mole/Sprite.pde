//スプライト・クラス:画像クラスの親クラス
class Sprite {
  PImage image;  //画像

  float x, y;      //座標

  //コンストラクタ(デフォルト)
  Sprite() {
  }

  //コンストラクタ(画像を指定する時)
  Sprite(PImage image) {
    this.image = image;
  }

  //表示
  void display() {
    image(this.image, x, y);
  }

  //移動
  void move() {
  }

  boolean isContactedWith(Sprite sprite) {
    boolean result = false; //判定結果格納変数.デフォルトはfalse

    if (dist(x, y, sprite.x, sprite.y) < (image.width + sprite.image.width)/2) {
      result = true;
    }

    return result;
  }
}
