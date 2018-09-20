
//image varibles-----------------------
PImage img;
PImage lol;
//-------------------------------------

//ints for making imgs move------------
int dabX = 0;
int yeetX = 0;
//-------------------------------------

//setup & setting img and lol for pictures
void setup() {
  size(800,800);
  img =loadImage("9.jpg");
  lol =loadImage("heyyo.png");
}
//----------------------------------------

void draw() {
  //setup2-------------------------------
  background(0);
  //-------------------------------------
  
  //images-------------------------------
  image(img,200,10+dabX);
  image(lol,600,10+yeetX);
  //-------------------------------------
  
  //if thinking emoji wins, prints "thinking emoji won!"
  if(dabX >= 780)
  {
    fill(255);
    textSize(40);
    text("Thinking emoji wins!",200,400);
    println("Thinking emoji wins!");
  }
  //-----------------------------------------------------
  
  //if question mark wins, it prints "question mark won!"
  else if(yeetX >=780)
  {
    fill(255);
    textSize(40);
    text("Question mark wins!",200,400);
    println("Question mark wins!");
  }
}
  //------------------------------------------------------
  
  //changes values for moving the pictures
  void keyPressed() {
    if(key == 'a')
    {
      dabX = dabX+20;
    }
    else if(key == 'l')
    {
      yeetX = yeetX+20;
    }
  }
  //---------------------------------------
