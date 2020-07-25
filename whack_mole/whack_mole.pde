//オブジェクト
Hammer hammer;
Mole mole;
Stage stage;

void setup() {
  size(640, 360);          //ディスプレイ。ウィンドウサイズを640×360に
  imageMode(CENTER);       //画像表示モードをCENTERに変更

  //インスタンス生成
  hammer = new Hammer(loadImage("hammer.png"));
  mole = new Mole(loadImage("mole.png"));
  stage = new Stage(loadImage("stage.png"));

  //ランダムな位置を指定
  mole.move();
}

void draw() {
  //経過時間以内なら表示
  if (stage.isTimeOver()==false) {
    background(204);                        //残像を消す

    //ステージを表示
    stage.display();

    //モグラを表示
    mole.display();

    //ハンマーを移動して表示
    hammer.move();
    hammer.display();

    //マウスをクリックしたら&クリックした場所とモグラの中心との距離が半径以内だったら
    if (mousePressed && mole.isContactedWith(hammer)) {
      mole.move();
      stage.scoreUp();
    }
  }
}
