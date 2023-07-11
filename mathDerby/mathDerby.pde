PImage track;
PImage myJockey;
PImage J1;
PImage J2;
PImage J3;

Jockey a;
Jockey b;
Jockey c;
Jockey d;


String beginGame = "Welcome to the Multiplication Math Derby!\n"
  + "Answer the multiplication questions correctly to move your jockey to the finish line!\n";
String displayed = "";
String userAnswer = "";
int correctAnswer = 0;
int userTurnCount = 0;


void setup()
{
  size(960,720);
  track = loadImage("Horse_track_background.jpg");
  myJockey = loadImage("my_racer.png");
  myJockey.resize(100, 100);
  J1 = loadImage("other_racers.png");
  J1.resize(100, 100);
  J2 = loadImage("other_racers.png");
  J2.resize(100, 100);
  J3 = loadImage("other_racers.png");
  J3.resize(100, 100);
  
  a = new Jockey(5, 15);
  b = new Jockey(5, 135);
  c = new Jockey(5, 262);
  d = new Jockey(5, 392);
  
  background(track);
  image(myJockey, a.x, a.y);
  image(J1, b.x, b.y);
  image(J2, c.x, c.y);
  image(J3, d.x, d.y);
  
  fill(0,0,0);
  textSize(21);
  text("Click the 'f' key to start game", 350, 625);
  
}

void reset()
{
  background(track);
  image(myJockey, a.x, a.y);
  image(J1, b.x, b.y);
  image(J2, c.x, c.y);
  image(J3, d.x, d.y);
}

int question(int correctAnswer)
{
  int num1 = int(random(0, 12));
  int num2 = int(random(0, 12));
  correctAnswer = num1 * num2;
  
  fill(0,0,0);
  textAlign(CENTER);
  textSize(40);
  displayed = "What is " + num1 + " x " + num2 + " ?";
  
  text(displayed, 500, 650); 
  
  return correctAnswer;
  
}

boolean checkAnswer(int correctAnswer, String userAnswer)
{
  boolean isCorrect = true;
  
  int userInput = int(userAnswer);
  
  if (userInput == correctAnswer)
  {
    isCorrect = true;     
  }
  else if (userInput != correctAnswer)
  {
    isCorrect = false;
  }
  
  if (isCorrect == true)
  {
    reset();
    fill(0,0,0);
    textAlign(CENTER);
    textSize(40);
    if (a.x < 810)
    {
      text("That's correct!\n" + "Press 'f' to continue" , 500, 600);
    }
    else if (a.x > 810)
    {
      fill(0,0,0);
      textAlign(CENTER);
      textSize(40);
      text("Congrats! You won the race!\n" + "Press 'j' to start new game" , 500, 600);
     }
  }
  
  else if(isCorrect == false)
  {
    reset();
    fill(0,0,0);
    textAlign(CENTER);
    textSize(40);
    if (b.x < 840 && c.x < 840 && d.x < 840)
    {
      text("Sorry, that's incorrect.\n" + "Press 'f' to continue", 500, 600);
    }
    else if (b.x > 840 || c.x > 840 || d.x > 840)
    {
      fill(0,0,0);
      textAlign(CENTER);
      textSize(40);
      text("Sorry! Better Practice Your Multiplication Tables!\n" + "Press 'j' to start new game" , 500, 600);
     }
  }
  
  return isCorrect;
}


void draw()
{
  
  textSize(21);
  fill(0,0,0);
  textAlign(CENTER);
  displayed = beginGame;
  
  text(displayed, 500, 540);
  
  if(key == ENTER || key == RETURN || key == 'z')
  {
    boolean result = checkAnswer(correctAnswer, userAnswer);
    if(result == true && (key == ENTER || key == RETURN) ){
      a.x += 80;
      key = 'z';
      reset();
    }
    else if(result == false && (key == ENTER || key == RETURN) ){
      b.x += random(30,70);
      c.x += random(30,70);
      d.x += random(30,70);
      key = 'z';
      reset();
    }
  }
}


void keyTyped()
{
   if (key == 'f')
   {
    reset();
    correctAnswer = question(correctAnswer);
    userAnswer = "";
   } 
   
   if (key == 'j')
   {
    setup();
   }
   
  
    if (key == '1')
    {
      userAnswer += '1';
      reset();
      text(userAnswer, 550, 650);
    }
    else if (key == '2')
    {
      userAnswer += '2';
      reset();
      text(userAnswer, 550, 650);
    }
    else if (key == '3')
    {
      userAnswer += '3';
      reset();
      text(userAnswer, 550, 650);
    }
    else if (key == '4')
    {
      userAnswer += '4';
      reset();
      text(userAnswer, 550, 650);
    }
    else if (key == '5')
    {
      userAnswer += '5';
      reset();
      text(userAnswer, 550, 650);
    }
    else if (key == '6')
    {
      userAnswer += '6';
      reset();
      text(userAnswer, 550, 650);
    }
    else if (key == '7')
    {
      userAnswer += '7';
      reset();
      text(userAnswer, 550, 650);
    }
    else if (key == '8')
    {
      userAnswer += '8';
      reset();
      text(userAnswer, 550, 650);
    }
    else if (key == '9')
    {
      userAnswer += '9';
      reset();
      text(userAnswer, 550, 650);
    }
    else if (key == '0')
    {
      userAnswer += '0';
      reset();
      text(userAnswer, 550, 650);
    }
    
    if(key == BACKSPACE)
    {
       if (userAnswer != null && userAnswer.length() > 0) 
       {
          userAnswer = userAnswer.substring(0, userAnswer.length() - 1);
          reset();
          text(userAnswer, 550, 650);
       }
    }
    
    if(key == ENTER || key == RETURN)
    {
      reset();
      checkAnswer(correctAnswer, userAnswer);
    }
}
