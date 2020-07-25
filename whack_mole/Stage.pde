//ステージ・クラス
class Stage extends Sprite {
  PFont font;              //フォント
  int score = 0;           //スコア
  int time, timeMax=20;    //経過時間、20秒の制限時間 

  //コンストラクタ
  Stage(PImage image) {
    super(image);          //親クラスのコンストラクタをそのまま使う

    //画像の中心を設定
    x = this.image.width/2;
    y = this.image.height/2;

    font = createFont("MS Gothic", 20);    //MSゴシックで大きさ20のフォントを生成
  }

  //表示(オーバーライド)
  void display() {
    super.display();

    //スコアを表示
    textFont(font);
    fill(0);            //黒で塗りつぶし
    text("SCORE:"+score, this.image.width, 20);

    //残り時間を表示
    text("残り時間:" + (timeMax-time), this.image.width, 40);
  }

  //制限時間が過ぎたか？
  boolean isTimeOver() {
    //判定結果格納変数
    boolean result = false;

    //経過時間計算
    time = millis() / 1000;                   //millis():スタートしてからのミリ秒の値を返す.今回は秒でカウントするために1000で割る

    if (time > timeMax) {
      result = true;
    }

    return result;
  }

  void scoreUp() {
    score++;    //スコアを増やす
  }
}
