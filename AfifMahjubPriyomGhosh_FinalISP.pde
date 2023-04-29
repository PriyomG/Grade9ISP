//Names: Afif Mahjub and Priyom Ghosh
//Date: May 6th, 2022 - June 17th, 2022
//Teacher: Ms.Basaraba
//Description: ISP Culminating assignment.


//General Variables
int index = -1; // variable to transition to different scenes
int textIndex = 0; //variable to transition text
int creditsIndex = 0; //varaible to decide which credits scene to play

//Main Menu Scene
int rectX1 = 300; // x variable modifier for original top rectangle
int rectY1 = 175; // y variable modifier for original top rectangle
int rectX2 = 500; // x variable modifier for animated top rectangle
int rectY2 = 225; // y variable modifier for animated top rectangle
int rectX3 = 300; // x variable modifier for original bottom rectangle
int rectY3 = 275; // y variable modifier for original bottom rectangle
int rectX4 = 500; // x variable modifier for animated bottom rectangle
int rectY4 = 325; // y variable modifier for animated bottom rectangle

//Home Scene
float benX = 10;  // x coordinates modifier for main character
float benY = 190; // y coordinates modifier for main character
boolean jumpDownStairs = false; //variable to check if ben has jumped down the stairs yet
int momX = -200; // x coordinate modifier for mother
int momY = 200; // y coordinate modifier for mother
int option = 0; // variable to check the option chosen for user input

//Backgrounds
PImage bgMain; //background of the main menu
PImage bgHome; //background of the home
PImage bgWalkSchool; //background of the walk to school

int car1X; //X movement variable for car 1
int car2X; //X movement variable for car 2

PImage bgMeetFriends; //background for the meet friends scene
PImage bgClass1; //background for class 1
PImage bgClass2;  //background for class 2

int x = 0; //movement variable for objects on x axis


int l = 0; //variable to change the rotate variable
int l2 = 0; //variable to change the rotate3 variable
int armMove = 0; //variable to move the arm of a character

int option2 = 0; //variable to hold the value of user input for the ICS quiz
boolean quizFinished = false; //variable to check if the quiz is completed

int rotate = 360; //variable used to rotate leg one
int rotate2 = 360; //variable used to rotate leg two
int rotate3 = 360; //variable used to rotate leg one of second character or rotate the arm of a character
int rotate4 = 360; //variable used to rotate leg two of a second character
int rotate5 = 360; //variable used sometimes to rotate leg two of a second character
boolean hasExtended = false; //variable to check if leg is fully extended on rotate and rotate2 legs
boolean hasExtended2 = false; //variable to check if leg is fully extended on rotate3 and rotate4 and/or rotate5 legs

PImage bgClass2Quiz; //background for the class 2 quiz
PImage bgThrownBasement; //background for the thrown in basement scene
PImage bgLunch;  //background for lunch
int disappear = 0; //Makes person disappear from lunch scene

PImage bgBasement;  //background for basement
int afifX = 80; //x coordinates modifier for afif
int afifY = -300; //y coordinates modifier for afif
int armMove2 = 0; //second variable to move the arm of a character
boolean tempPause = true; //variable to pause using enter to go to next animation
int baseFallX = 0; //basement scene fall x movement
float baseFallY = 0; //basement scene fall y movement (curve downwards)
int disappear2 = 0; //make fallen Benjamin disappear in order to replace it with Benjamin standing up

PImage bgSewers;  //background for sewers
PImage bgStuckInSewers;  //background for stuck in sewers scene
PImage bgHundredYears; //background for a hundred years later scene
PImage bgLadder; //background for ladder scene
int benY2 = -250; //second variable for modifing y coordinate of main character
boolean hasReached = false; //variable to check if the main character has climbed up the ladder
PImage bgPool; //background for pool scene
float drownY1 = 350.0; //drowning Y movement in pool scene
float d = 1.0; //controls the drowing speed in pool scene
PImage bgClass3; //background for class 3
int sleepClass3 = 0; //user input for class 3 scene
PImage bgClass4; //background for class4
int constant = 200; //changes the center position of the circular rotation
float angle = 100; //changes the starting point of circular rotation
int scalar = 150; //size of rotation (bigger scale means farther distance from center)
float speed = 0.005; //speed at which Benjamin runs around the track
PImage bgCredits; //background for credits scene

int textS = 13; //variable to increase the text size
int fade = 0; //variable to make the fade affect

int textX = 0; //x variable to move the text
int textY = 0; //y varaible to move the text

boolean firstTime = true; //variable to check if it is the first time the storybook is being played
boolean instructionsButton = false; //variable to check if the how to play button was clicked


void setup() 
{
  size(800, 500);
  bgMain = loadImage("bgMainMenu.png");
  bgHome = loadImage("bgHome.png");
  bgWalkSchool = loadImage("bgWalk.png");
  bgMeetFriends = loadImage("meetFriends.png");
  bgClass1 = loadImage("bgClass1.png");
  bgClass2 = loadImage("bgClass2.png");
  bgClass2Quiz = loadImage("bgClass2(2).jpg");
  bgThrownBasement = loadImage("bgThrownBasement.png");
  bgBasement = loadImage("bgBasement.png");
  bgSewers = loadImage("bgSewers.png");
  bgLadder = loadImage("bgLadder.png");
  bgLunch = loadImage("lunch.png");
  bgPool = loadImage("pool.png");
  bgClass3 = loadImage("class3.png");
  bgClass4 = loadImage("class4.png");
}


void splashScreen() {

  background(fade);

  //Making the screen fade
  if (textS >= 60) {
    fade+=2; 
    textS--;
  }

  //Changing the index
  if (fade >= 255) {
    index = 0;
  }

  //Increasing the text size
  textSize(textS);
  textS++;

  textAlign(CENTER);
  text("John Doe Inc Presents", 400, 250);
}

void mainMenu() 
{
  rectMode(CORNER);
  stroke(0);
  textSize(13);

  //Credits Button
  fill(255, 255, 255, 220);
  if (715 <= mouseX && mouseX <= 785) {
    if (473 <= mouseY && mouseY <= 498) {
      fill(160, 160, 160, 220);
      if (mousePressed) {
        fade = 0;
        textY = 0;
        index = 18;
      }
    }
  }
  rect(715, 473, 70, 25);

  fill(0);
  text("CREDITS", 750, 490);
  fill(255);

  //How to Play Button
  fill(255, 255, 255, 220);
  if (600 <= mouseX && mouseX <= 700) {
    if (473 <= mouseY && mouseY <= 498) {
      fill(160, 160, 160, 220);
      if (mousePressed) {
        index = 19;
        instructionsButton = true;
      }
    }
  }
  rect(600, 473, 100, 25);

  fill(0);
  text("HOW TO PLAY", 650, 490);
  fill(255);

  //Start Button
  rectMode(CORNERS);
  stroke(255);
  strokeWeight(5);
  noFill();
  rect(rectX1, rectY1, rectX2, rectY2);

  rect(rectX3, rectY3, rectX4, rectY4);

  if (rectX1 <= mouseX && mouseX <= rectX2) {
    if (rectY1 <= mouseY && mouseY <= rectY2) {
      rectX1 = 280;
      rectX2 = 520;
      rectY1 = 165;
      rectY2 = 235;

      if (mousePressed == true) {
        if (firstTime == true) {
          index = 19;
        } else {
          index = 17;
        }
      }
    } else {
      rectX1 = 300;
      rectY1 = 175;
      rectX2 = 500;
      rectY2 = 225;
    }
  } else {
    rectX1 = 300;
    rectY1 = 175;
    rectX2 = 500;
    rectY2 = 225;
  }

  textSize(25);
  text("START", 400, 210);

  //Exit Button
  if (rectX3 <= mouseX && mouseX <= rectX4) {
    if (rectY3 <= mouseY && mouseY <= rectY4) {
      rectX3 = 280;
      rectX4 = 520;
      rectY3 = 265;
      rectY4 = 335;

      if (mousePressed == true) {
        exit();
      }
    } else {
      rectX3 = 300;
      rectY3 = 275;
      rectX4 = 500;
      rectY4 = 325;
    }
  } else {

    rectX3 = 300;
    rectY3 = 275;
    rectX4 = 500;
    rectY4 = 325;
  }
  text("QUIT", 400, 310);


  //Title
  textAlign(CENTER);
  textSize(40);
  text("Benjamin's High School Adventure", 400, 100);
}


void credits() {
  background(fade);

  //Text in the credits
  textAlign(CENTER);
  textSize(30);
  text("CREDITS", 400, 500+textY);
  textSize(20);
  text("\n\n\nProgrammers\nAfif Mahjub\nPriyom Ghosh\n\n\nGame Designers\nAfif Mahjub\nPriyom Ghosh\n\n\nPlay Testers\nPouya Karimi\nSailesh V Badri\n\n\nSpecial thanks to Sailesh and Pouya for\n letting us include them in our storybook!", 400, 500+textY);
  textY--;

  //Fading Animation
  if (textY <= -1000) {
    fade+=5;
  }
  
  //Changing the Index
  if (fade >= 255) {
    index = 0;
  }
}

void backStory() {
  background(0);
  
  //Text in the back story
  textAlign(CENTER);
  textSize(15);
  text("You are a 14 year old teenager who is going to William Lyon Marskenzie in the year 2040. You are a part\nof the first batch of pioneers on the planet Mars, chosen because of your parent’s MaCS status. Your\nsupreme leader, Elon Musk, who made all of this possible, is obliging everyoneto take a pill that makes\nthem bald. No one knows the exact reason for why the supreme leader did this, but some reports state\nthat it is becuase his hair is thinning. You are a part of the program called MaCS on Mars (MaCSoM), even\nthough you failed your MaCS entry exam, and your parents had to bribe the headmaster to let you in the\nprogram. Today is just like any other day of school (or is it?). You have many choices to make, and each\nchoice will lead you to a different outcome…", 400, 100);
  tempPause = false;
  text("Press ENTER to Continue", 400, 400);
  
  //Changing the Index
  if (textIndex == 1) {
    textIndex = 0;  
    tempPause = true;
    index = 1;
  }
}

void howToPlay() {
  background(0);
  tempPause = false;
  
  //Text in the instructions
  textAlign(CENTER);
  textSize(15);
  text("Use ENTER to continue the animation and/or go to the next scene.\n\n\nUse ENTER when entering user input. DO NOT use the mouse.\n\n\nThis storybook has MULTIPLE endings, so try it agian after you finish and\n choose different options to see if you can find all the endings!\n\n\n These are all the things you need to know to use this story book.\n\n\n Have Fun Playing!", 400, 80);

  //Check if the instructions button is clicked
  if (instructionsButton == false) {
    text("Press ENTER to Continue", 400, 470);
 
  //Changing the Index
    if (textIndex == 1) {
      tempPause = true;
      firstTime = false;
      textIndex = 0;
      index = 17;
    }
  }
}

void home()
{
  background(bgHome);
  rectMode(CORNER);
  textAlign(LEFT);
  stroke(1);

  //Jumping down stairs animation and mom walking animation
  benX+=3;

  if (jumpDownStairs == false) {
    benY = ((0.002)*(benX*benX))-100;
  }

  if (benY >= 348 || benX >= 280) {
    jumpDownStairs = true;
  }

  if (benX >= 350) {
    benX-=2;
  }

  if (benX >= 450 && rotate == 360) {
    benX -=1;
  } else {
    //Calculations for the leg rotations
    rotate+=l;
    rotate2-=l;

    if (hasExtended == false) {
      l = -2;
      if (rotate <= 320) {
        hasExtended = true;
      }
    } else {
      l = 2;
      if (rotate >= 360) {
        hasExtended = false;
      }
    }
  }

  //Ben

  fill(227, 177, 136);
  rect(-21+benX, 236+benY, 50, 50); //head
  rect(-9+benX, 286+benY, 25, 5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-6+benX, 373+benY);
  rotate(radians(rotate));
  rect(0, 0, 20, 70);
  popMatrix();

  //Rotation for leg 1
  pushMatrix();
  translate(-6+benX, 373+benY);
  rotate(radians(rotate2));
  rect(0, 0, 20, 70); //leg 1
  popMatrix();

  fill(255);
  rect(-16+benX, 292+benY, 40, 80); //body
  fill(227, 177, 136);
  rect(-3+benX, 308+benY, 15, 60); //arm

  //Mother
  fill(227, 177, 136);
  rect(-21+momX, 86+momY, 50, 50); //head
  rect(-9+momX, 136+momY, 25, 5); //neck

  //Rotation for leg 1
  fill(41, 22, 20);
  pushMatrix();
  translate(-6+momX, 243+momY);
  rotate(radians(rotate3));
  rect(0, 0, 20, 60); //leg 1
  popMatrix();

  //Rotation for leg 2
  pushMatrix();
  translate(-6+momX, 243+momY);
  rotate(radians(rotate4));
  rect(0, 0, 20, 60); //leg 2
  popMatrix();

  fill(148, 87, 142);
  rect(-16+momX, 142+momY, 40, 100); //body

  fill(227, 177, 136);
  pushMatrix();
  translate(-3+momX, 158+momY);
  rotate(radians(360));
  rect(0, 0, 15, 60); //arm
  popMatrix();

  momX+=2;

  rotate3+=l2;
  rotate4-=l2;

  if (hasExtended2 == false) {
    l2 = -2;
    if (rotate3 <= 320) {
      hasExtended2 = true;
    }
  } else {
    l2 = 2;
    if (rotate3 >= 360) {
      hasExtended2 = false;
    }
  } 



  //Conversation with Mom
  if (momX >= 300 && rotate3 == 360) {
    momX-=2; 
    rotate3-=l2;
    rotate4+=l2;
    tempPause = false;
    if (textIndex == 0) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Mom ]", 100, 400);
      textSize(15);
      text("Have a great day at school", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }
  
    //Choosing an option
    if (textIndex == 1) {
      tempPause = true;
      if (option == 0) {
        option = getInt("CHOOSE THE ACTION:\n1: Say Bye to Mom\n2: Don't Say Anything \n[ENTER 1 or 2]");
      } else if (option == 1) {
        textIndex = 2;
      } else if (option == 2) {
        textIndex = 5;
      } else {
        option = 0;
        println("ERROR \nPlease enter a valid option.");
      }
    }

    if (textIndex == 2) {
      tempPause = false;
    }

    if (textIndex == 3) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("Thanks, bye Mom!", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 4) {
      benX = 0;
      rotate = 360;
      rotate2 = 360;
      hasExtended = false;
      l = 0;
      benY = 375;
      rotate3 = 360;
      textIndex = 0;
      tempPause = true;
      index = 2;
    }

    if (textIndex == 5) {
      tempPause = false;
    }

    if (textIndex == 6) {

      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Mom ]", 100, 400);
      textSize(15);
      text("I think you forgot to say something...", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }
    if (textIndex == 7) {

      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("Uh Oh", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }
    
    //Changing Index
    if (textIndex == 8) {
      textIndex = 0;
      rotate3 = 360;
      benY = -115;
      benX = 102;
      tempPause = true;
      index = 4;
    }
  }
}

void walkSchool() {
  background(bgWalkSchool);
  strokeWeight(1);

  //Top Car

  car1X-=5;

  pushMatrix();
  translate(800 + car1X, 215);

  //roof
  pushMatrix();
  fill(109, 20, 29);
  arc(125, 52.5, 150, 40, PI, PI+PI, PIE);

  fill(176, 192, 199);
  arc(120, 48, 100, 26, PI, PI+HALF_PI+radians(2), PIE);

  beginShape();
  vertex(125, 35);
  vertex(159, 36.5);
  vertex(166, 42);
  vertex(166, 48);
  vertex(123, 48);
  endShape(CLOSE);
  popMatrix();

  //front
  pushMatrix();
  fill(109, 20, 29);
  beginShape();
  vertex(69, 87);
  vertex(69, 67);
  vertex(8, 67);
  vertex(8, 81);
  vertex(14, 87);
  endShape(CLOSE);

  quad(69, 58, 14, 58, 8, 67, 69, 67);

  ellipseMode(CENTER);
  arc(69, 58, 110, 16, PI, PI+HALF_PI);

  stroke(0);
  fill(208, 221, 224);
  quad(16, 61, 32, 61, 26, 67, 9, 67);

  ellipse(14, 79, 3, 4);

  fill(238, 152, 79);
  rectMode(CORNER);
  rect(59, 61, 5, 2);
  popMatrix();

  //doors
  pushMatrix();
  fill(109, 20, 29);
  quad(69, 87, 69, 50, 120, 50, 116, 87);
  quad(120, 50, 116, 87, 159, 87, 167, 50);

  fill(145, 150, 147);
  rect(107, 53, 9, 2);
  rect(154, 53, 9, 2);
  popMatrix();

  //back
  pushMatrix();
  fill(109, 20, 29);
  beginShape();
  vertex(167, 50);
  vertex(214, 50);
  vertex(217, 81);
  vertex(194, 87);
  vertex(159, 87);
  endShape(CLOSE);

  fill(206, 54, 43);
  beginShape();
  vertex(215, 52);
  vertex(215, 57);
  vertex(211, 58);
  vertex(200, 58);
  vertex(200, 55);
  endShape(CLOSE);
  popMatrix();

  //wheels
  pushMatrix();
  fill(0);
  ellipse(45, 82, 29, 29);
  fill(255);
  ellipse(45, 82, 19, 19);
  popMatrix();

  pushMatrix();
  fill(0);
  ellipse(175, 81, 29, 29);
  fill(255);
  ellipse(175, 81, 19, 19);
  popMatrix();
  popMatrix();

  //-----------------------------------------------------------------------------------------------------------------

  //Bottom Car

  car2X+=5;

  pushMatrix();
  translate(0 + car2X, 300);
  stroke(0);
  scale(-1, 1);

  //roof
  pushMatrix();
  fill(50, 82, 123);
  arc(125, 52.5, 150, 40, PI, PI+PI, PIE);

  fill(176, 192, 199);
  arc(120, 48, 100, 26, PI, PI+HALF_PI+radians(2), PIE);

  beginShape();
  vertex(125, 35);
  vertex(159, 36.5);
  vertex(166, 42);
  vertex(166, 48);
  vertex(123, 48);
  endShape(CLOSE);
  popMatrix();

  //front
  pushMatrix();
  fill(50, 82, 123);
  beginShape();
  vertex(69, 87);
  vertex(69, 67);
  vertex(8, 67);
  vertex(8, 81);
  vertex(14, 87);
  endShape(CLOSE);

  quad(69, 58, 14, 58, 8, 67, 69, 67);

  ellipseMode(CENTER);
  arc(69, 58, 110, 16, PI, PI+HALF_PI);

  stroke(0);
  fill(208, 221, 224);
  quad(16, 61, 32, 61, 26, 67, 9, 67);

  ellipse(14, 79, 3, 4);

  fill(238, 152, 79);
  rectMode(CORNER);
  rect(59, 61, 5, 2);
  popMatrix();

  //doors
  pushMatrix();
  fill(50, 82, 123);
  quad(69, 87, 69, 50, 120, 50, 116, 87);
  quad(120, 50, 116, 87, 159, 87, 167, 50);

  fill(145, 150, 147);
  rect(107, 53, 9, 2);
  rect(154, 53, 9, 2);
  popMatrix();

  //back
  pushMatrix();
  fill(50, 82, 123);
  beginShape();
  vertex(167, 50);
  vertex(214, 50);
  vertex(217, 81);
  vertex(194, 87);
  vertex(159, 87);
  endShape(CLOSE);

  fill(206, 54, 43);
  beginShape();
  vertex(215, 52);
  vertex(215, 57);
  vertex(211, 58);
  vertex(200, 58);
  vertex(200, 55);
  endShape(CLOSE);
  popMatrix();

  //wheels
  pushMatrix();
  fill(0);
  ellipse(45, 82, 29, 29);
  fill(255);
  ellipse(45, 82, 19, 19);
  popMatrix();

  pushMatrix();
  fill(0);
  ellipse(175, 81, 29, 29);
  fill(255);
  ellipse(175, 81, 19, 19);
  popMatrix();

  popMatrix();

  if (car1X <= -300 && car2X >= 1100) {
    car1X = 0;
    car2X = 0;
  }

  //Benjamin Walking to School
  fill(227, 177, 136);
  strokeWeight(3);
  pushMatrix();
  scale(0.45);
  translate(0, 80);
  //Shapes for Body
  rect(-21+benX, 236, 50, 50); //head
  rect(-9+benX, 286, 25, 5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-6+benX, 373);
  rotate(radians(rotate));
  rect(0, 0, 20, 70); //leg 1
  popMatrix();

  //Rotation for leg 2
  pushMatrix();
  translate(-6+benX, 373);
  rotate(radians(rotate2));
  rect(0, 0, 20, 70); //leg 2
  popMatrix();

  fill(255);
  rect(-16+benX, 292, 40, 80); //body
  fill(227, 177, 136);
  rect(-3+benX, 308, 15, 60); //arm
  popMatrix();

  benX+=3;
  rotate+=l;
  rotate2-=l;

  if (hasExtended == false) {
    l = -2;
    if (rotate <= 320) {
      hasExtended = true;
    }
  } else {
    l = 2;
    if (rotate >= 360) {
      hasExtended = false;
    }
  }

  if (benX >= 1850) {
    index = 3;
    x = 0;
    rotate = 360;
    rotate2 = 360;
    l = 0;
    hasExtended = false;
    textIndex = 0;
    tempPause = true;
    benX = -10;
    benY = 370;
  }
}

void meetFriends() {
  background(bgMeetFriends);
  strokeWeight(3);

  //Friend
  pushMatrix();
  scale(0.7);
  translate(90, 230);

  fill(128, 0, 128);
  rect(400, 250, 40, 80); //body

  fill(165, 114, 87);
  rect(408, 246, 24, 4); //neck
  rect(397, 200, 46, 46); //head
  rect(400, 255, -15, 85); //arm #1
  rect(440, 255, 15, 85); //arm #2

  fill(192, 192, 192);
  rect(400, 330, 20, 90); //leg #1
  rect(420, 330, 20, 90); //leg #2
  popMatrix();

  //Benjamin Walking
  pushMatrix();
  scale(0.75);
  translate(-50, 160);

  //Shapes for Body
  fill(227, 177, 136);
  rect(-21+x, 236, 50, 50); //head
  rect(-9+x, 286, 25, 5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-6+x, 373);
  rotate(radians(rotate));
  rect(0, 0, 20, 70); //leg 1
  popMatrix();

  //Rotation for leg 2
  pushMatrix();
  translate(-6+x, 373);
  rotate(radians(rotate2));
  rect(0, 0, 20, 70); //leg 2
  popMatrix();

  fill(255);
  rect(-16+x, 292, 40, 80); //body
  fill(227, 177, 136);
  rect(-3+x, 308, 15, 60); //arm
  popMatrix();

  x+=2;
  rotate+=l;
  rotate2-=l;

  if (hasExtended == false) {
    l = -2;
    if (rotate <= 320) {
      hasExtended = true;
    }
  } else {
    l = 2;
    if (rotate >= 360) {
      hasExtended = false;
    }
  }

  if (x>=400 && rotate == 360) {
    x-=2;
    rotate-=l;
    rotate2+=l;
    tempPause = false;

    if (textIndex == 0) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("Hey! You ready for that ICS quiz today?", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 1) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Friend ]", 100, 400);
      textSize(15);
      text("Yeah I think I studied enough for the quiz. Best of luck to you on that,\nI think you might need it.", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 2) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("WHAT'S THAT SUPPOSED TO MEAN?!?!?!?", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 3) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("Whatever, I am gonna be late for class if we keep talking, see ya.", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 4) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Friend ]", 100, 400);
      textSize(15);
      text("Bye.", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 5) {
      tempPause = true;
      x+=2;
      rotate+=l;
      rotate2-=l;
    }

    if (x >= 750 && x < 800) {
      textIndex = 0;
      rotate3 = 360;
      benY = -115;
      benX = 102;
      x = 0;
      tempPause = true;
      index = 4;
    }
  }
}

void class1() {
  background(bgClass1);

  pushMatrix();
  if (x == 175) {
    textIndex = 1;
  }

  //Sitting down
  if (x >= 140 && rotate == 360) {
    scale(0.8);

    //Shapes for the Body
    fill(227, 177, 136);
    rect(232-benX, 236-benY, 50, 50); //head
    rect(244-benX, 286-benY, 25, 5); //neck

    fill(255);
    rect(237-benX, 292-benY, 40, 80); //body
    fill(227, 177, 136);
    rect(250-benX, 308-benY, 60, 15); //arm

    fill(0);
    rect(281-benX, 358-benY, 30, 14); //leg 1
    rect(296-benX, 372-benY, 15, 50); //leg 2
    fill(255);
  } else {

    scale(0.8);
    //Shapes for the Body
    fill(227, 177, 136);
    rect(-21+x, 236-benY, 50, 50); //head
    rect(-9+x, 286-benY, 25, 5); //neck

    //Rotation for leg 1
    fill(0);
    pushMatrix();
    translate(-6+x, 373-benY);
    rotate(radians(rotate));
    rect(0, 0, 20, 70);
    popMatrix();

    //Rotation for leg 1
    pushMatrix();
    translate(-6+x, 373-benY);
    rotate(radians(rotate2));
    rect(0, 0, 20, 70); //leg 1
    popMatrix();

    fill(255);
    rect(-16+x, 292-benY, 40, 80); //body
    fill(227, 177, 136);
    rect(-3+x, 308-benY, 15, 60); //arm


    //Calculations for the leg rotations
    rotate+=l;
    rotate2-=l;

    if (hasExtended == false) {
      l = -2;
      if (rotate <= 320) {
        hasExtended = true;
      }
    } else {
      l = 2;
      if (rotate >= 360) {
        hasExtended = false;
      }
    }
    x++;
  }

  popMatrix();


  //Conversation
  if (textIndex == 1) {
    tempPause = false;
    noStroke();
    fill(255, 255, 255, 220);
    rect(68, 372, 664, 100);
    fill(0);
    stroke(1);
    textSize(17);
    text("[ Ben ]", 100, 400);
    textSize(15);
    text("This is really boring, but I think I will do the scene where Basanio goes to McDonalds.", 100, 432);
    textSize(11);
    text("Press ENTER to Continue", 580, 455);
    fill(255);
  }

  if (textIndex == 2) {
    benX = -50;
    x = 0;
    benY = 220;
    rectX1 = 305;
    rectY1 = 236;
    rectX2 = 455;
    rectY2 = 286;
    rotate3 = 300;
    tempPause = true;
    textIndex = 0;
    index = 5;
  }
}

void class2() {

  if (x <= 300) {
    background(bgClass2);
    strokeWeight(3);
    if (x >= 260 && rotate == 360) {

      //Shapes for the Body
      fill(227, 177, 136);
      rect(232, 236, 50, 50); //head
      rect(244, 286, 25, 5); //neck

      fill(255);
      rect(237, 292, 40, 80); //body
      fill(227, 177, 136);
      rect(250, 308, 60, 15); //arm

      fill(0);
      rect(281, 358, 30, 14); //leg 1
      rect(296, 372, 15, 50); //leg 2
      fill(255);

      x++;
    } else {
      //Shapes for the Body
      fill(227, 177, 136);
      rect(-21+x, 236, 50, 50); //head
      rect(-9+x, 286, 25, 5); //neck

      //Rotation for leg 1
      fill(0);
      pushMatrix();
      translate(-6+x, 373);
      rotate(radians(rotate));
      rect(0, 0, 20, 70); //leg 1
      popMatrix();

      //Rotation for leg 2
      pushMatrix();
      translate(-6+x, 373);
      rotate(radians(rotate2));
      rect(0, 0, 20, 70); //leg 2
      popMatrix();

      fill(255);
      rect(-16+x, 292, 40, 80); //body
      fill(227, 177, 136);
      rect(-3+x, 308, 15, 60); //arm


      //Calculations for the leg rotations
      rotate+=l;
      rotate2-=l;

      if (hasExtended == false) {
        l = -2;
        if (rotate <= 320) {
          hasExtended = true;
        }
      } else {
        l = 2;
        if (rotate >= 360) {
          hasExtended = false;
        }
      }
      x++;
    }
  } else {
    background(bgClass2Quiz);

    strokeWeight(5);
    if (quizFinished == false) {
      rectMode(CORNERS);
      rect(rectX1, rectY1, rectX2, rectY2);

      textAlign(CENTER);

      textSize(23);
      fill(0);
      text("START QUIZ", 380, 271);
      fill(255);

      //Quiz
      if (quizFinished == false) {
        if (rectX1 <= mouseX && mouseX <= rectX2) {
          if (rectY1 <= mouseY && mouseY <= rectY2) {
            rectX1 = 285;
            rectY1 = 226;
            rectX2 = 475;
            rectY2 = 296;

            if (mousePressed == true) {
              if (option2 == 0) {
                option2 = getInt("QUIZ: What is the output of the following program: println(Elon Musk);\n1: Elon Musk \n2: Elon Musk is our savior \n [Answer with 1 or 2]");
              } else if (option2 == 1) {
                quizFinished = true;
              } else if (option2 == 2) {
                quizFinished = true;
              } else {
                println("ERROR");
                option2 = 0;
              }
            }
          } else {
            rectX1 = 305;
            rectY1 = 236;
            rectX2 = 455;
            rectY2 = 286;
          }
        } else {
          rectX1 = 305;
          rectY1 = 236;
          rectX2 = 455;
          rectY2 = 286;
        }
      }
    }
  }


  //Failing the Quiz
  if (option2 == 1) {
    tempPause = false;
    quizFinished = true;
    mousePressed = false;
    textSize(23);
    fill(255, 0, 0);
    text("YOU FAILED", 380, 271);
    textSize(11);
    text("Press ENTER to Continue", 380, 300);
    fill(255);

    if (textIndex == 2) {
      x = 0;
      benX = 0;
      benY = 0;
      textIndex = 0;
      tempPause = true;
      index = 6;
    }
    //Passing the Quiz
  } else if (option2 == 2) {
    tempPause = false;
    quizFinished = true;
    mousePressed = false;

    textSize(23);
    fill(0, 255, 0);
    text("YOU PASSED", 380, 271);
    textSize(11);
    text("Press ENTER to Continue", 380, 300);
    fill(255); 



    if (textIndex == 2) {
      x = 0;
      rotate = 360;
      rotate2 = 360;
      rotate3 = 360;
      hasExtended = false;
      l = 0;
      tempPause = true;
      textIndex = 0;
      benX = 0;
      benY = 0;
      armMove = 0;
      option = 0;
      index = 12;
    }
  }
}

void quizFail() {

  background(bgClass2);
  rectMode(CORNER);
  textAlign(LEFT);


  //Ben
  fill(227, 177, 136);
  rect(232+benX, 236+benY, 50, 50); //head
  rect(244+benX, 286+benY, 25, 5); //neck

  fill(255);
  rect(237+benX, 292+benY, 40, 80); //body
  fill(227, 177, 136);
  rect(250+benX, 308+benY, 60, 15); //arm

  fill(0);
  rect(278+benX, 358+benY, 30, 14); //leg 1
  rect(293+benX, 372+benY, 15, 50); //leg 2

  if (x >= 175 && rotate == 360) {

    //Pouya
    fill(227, 177, 136);
    rect(-21+x+benX, 206, 50, 50); //head
    rect(-9+x+benX, 256, 25, 5); //neck

    //Rotation for leg 1
    fill(0);
    pushMatrix();
    translate(-6+x+benX, 363);
    rotate(radians(rotate4));
    rect(0, 0, 20, 80); //leg 1
    popMatrix();

    //Rotation for leg 2
    pushMatrix();
    translate(-6+x+benX, 363);
    rotate(radians(rotate5));
    rect(0, 0, 20, 80); //leg 2
    popMatrix();

    fill(255, 165, 0);
    rect(-16+x+benX, 262, 40, 100); //body

    fill(227, 177, 136);
    pushMatrix();
    translate(-3+x+benX, 278);
    rotate(radians(rotate3));
    rect(0, 0, 15, 60); //arm
    popMatrix();

    if (benX >= 0) {
      if (textIndex == 0) {
        tempPause = false;
        noStroke();
        fill(255, 255, 255, 220);
        rect(68, 372, 664, 100);
        fill(0);
        stroke(1);
        textSize(17);
        text("[ Headmaster Pouya ]", 100, 400);
        textSize(15);
        text("YOU FAILED YOUR QUIZ!", 100, 432);
        textSize(11);
        text("Press ENTER to Continue", 580, 455);
        fill(255);
      }
    }


    if (textIndex == 1) {
      tempPause = true;
      x = 185;
      benY--;
      rotate3--;
      if (benY <= -20) {
        benY++;
      }
      if (rotate3 <= 270) {
        rotate3++;
      }

      rotate4+=l2;
      rotate5-=l2;

      if (hasExtended2 == false) {
        l2 = -2;
        if (rotate4 <= 320) {
          hasExtended2 = true;
        }
      } else {
        l2 = 2;
        if (rotate4 >= 360) {
          hasExtended2 = false;
        }
      }
      benX+=2;
    }


    if (benX >= 700) {
      benX = 0;
      x = 0;
      rotate = 360;
      rotate2 = 360;
      textIndex = 0;
      tempPause = true;
      index = 7;
    }
  } else {
    //Shapes for the Body
    fill(227, 177, 136);
    rect(-21+x, 206, 50, 50); //head
    rect(-9+x, 256, 25, 5); //neck

    //Rotation for leg 1
    fill(0);
    pushMatrix();
    translate(-6+x, 363);
    rotate(radians(rotate));
    rect(0, 0, 20, 80); //leg 1
    popMatrix();

    //Rotation for leg 2
    pushMatrix();
    translate(-6+x, 363);
    rotate(radians(rotate2));
    rect(0, 0, 20, 80); //leg 2
    popMatrix();

    fill(255, 165, 0);
    rect(-16+x, 262, 40, 100); //body
    fill(227, 177, 136);
    rect(-3+x, 278, 15, 60); //arm


    //Calculations for the leg rotations
    rotate+=l;
    rotate2-=l;

    if (hasExtended == false) {
      l = -2;
      if (rotate <= 320) {
        hasExtended = true;
      }
    } else {
      l = 2;
      if (rotate >= 360) {
        hasExtended = false;
      }
    }
    x++;
  }
}

void thrownInBasement() {
  background(bgThrownBasement);

  pushMatrix();
  scale(0.7);

  //Ben
  fill(227, 177, 136);
  rect(47+benX+x, 126+benY, 50, 50); //head
  rect(59+benX+x, 176+benY, 25, 5); //neck

  fill(255);
  rect(52+benX+x, 182+benY, 40, 80); //body
  fill(227, 177, 136);
  rect(65+benX+x, 198+benY, 60, 15); //arm

  fill(0);
  rect(93+benX+x, 248+benY, 30, 14); //leg 1
  rect(108+benX+x, 262+benY, 15, 50); //leg 2


  //Pouya
  fill(227, 177, 136);
  rect(-21+benX, 86, 50, 50); //head
  rect(-9+benX, 136, 25, 5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-6+benX, 243);
  rotate(radians(rotate));
  rect(0, 0, 20, 60); //leg 1
  popMatrix();

  //Rotation for leg 2
  pushMatrix();
  translate(-6+benX, 243);
  rotate(radians(rotate2));
  rect(0, 0, 20, 60); //leg 2
  popMatrix();

  fill(255, 165, 0);
  rect(-16+benX, 142, 40, 100); //body

  fill(227, 177, 136);
  pushMatrix();
  translate(-3+benX+armMove, 158);
  rotate(radians(290));
  rect(0, 0, 15, 60); //arm
  popMatrix();

  popMatrix();

  if (benX >= 180 && rotate == 360) {
    armMove+=2;
    x+=7;
    benY = ((0.001)*(x*x)-10);

    if (armMove >= 10) {
      armMove-=2;
    }

    if (benY >= 600) {
      textIndex = 0;
      tempPause = true;
      benX = 0;
      benY = 0;
      afifX = 0;
      afifY = 0;
      rotate = 360;
      rotate2 = 360;
      rotate3 = 360;
      rotate4 = 360;
      rotate5 = 360;
      hasExtended = false;
      hasExtended2 = false;
      l = 0;
      index = 8;
    }
  } else {
    rotate+=l;
    rotate2-=l;

    if (hasExtended == false) {
      l = -2;
      if (rotate <= 320) {
        hasExtended = true;
      }
    } else {
      l = 2;
      if (rotate >= 360) {
        hasExtended = false;
      }
    }

    benX++;
  }
}

void basement() {
  background(bgBasement);

  baseFallX+=5;
  baseFallY = (0.0015)*(baseFallX*baseFallX);

  //Benjamin Falling
  pushMatrix();
  scale(0.7);
  fill(227, 177, 136);
  rect(0+baseFallX+disappear2, 236+baseFallY, 50, 50); //head
  rect(0+baseFallX+disappear2, 248+baseFallY, -5, 25); //neck

  fill(0);
  rect(-85+baseFallX+disappear2, 247+baseFallY, -70, 20); //leg 1
  rect(-85+baseFallX+disappear2, 257+baseFallY, -70, 20); //leg 2

  fill(255);
  rect(-6+baseFallX+disappear2, 241+baseFallY, -80, 40); //body
  fill(227, 177, 136);
  quad(-27+baseFallX+disappear2, 254+baseFallY, 22+baseFallX+disappear2, 283+baseFallY, 14+baseFallX+disappear2, 295+baseFallY, -36+baseFallX+disappear2, 264+baseFallY); //arm
  popMatrix();

  //Afif Code
  pushMatrix();
  scale(0.7);
  translate(900, 300);
  fill(227, 177, 136);
  rect(-21-afifX, 186-afifY, 50, 50); //head
  rect(-9-afifX, 236-afifY, 25, 5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-6-afifX, 343-afifY);
  rotate(radians(rotate));
  rect(0, 0, 20, 60); //leg 1
  popMatrix();

  //Rotation for leg 2
  pushMatrix();
  translate(-6-afifX, 343-afifY);
  rotate(radians(rotate2));
  rect(0, 0, 20, 60); //leg 2
  popMatrix();

  fill(0, 0, 255);
  rect(-16-afifX, 242-afifY, 40, 100); //body

  fill(227, 177, 136);
  pushMatrix();
  translate(-3-afifX, 258-afifY);
  rotate(radians(rotate3));
  rect(0, 0, 15, 60); //arm
  popMatrix();

  popMatrix();

  if (baseFallX >= 530) {
    baseFallX-=5;
    tempPause = false;
    if (textIndex == 0) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("OWWWWWWWWWWWWWW", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (disappear2 == 10000) {
      //Benjamin Stands Up
      pushMatrix();
      scale(0.7);
      translate(400, 260);
      //Shapes for Body
      fill(227, 177, 136);
      rect(-21, 236, 50, 50); //head
      rect(-9, 286, 25, 5); //neck

      fill(0);
      pushMatrix();
      translate(-6, 373);
      rect(0, 0, 20, 70); //leg 1
      popMatrix();

      pushMatrix();
      translate(-6, 373);
      rect(0, 0, 20, 70); //leg 2
      popMatrix();

      fill(255);
      rect(-16, 292, 40, 80); //body
      fill(227, 177, 136);
      rect(-3, 308, 15, 60); //arm
      popMatrix();

      if (hasExtended == false) {
        l = -2;
        if (rotate <= 320) {
          hasExtended = true;
        }
      } else {
        l = 2;
        if (rotate >= 360) {
          hasExtended = false;
        }
      }
    }

    if (textIndex == 1) {
      disappear2 = 10000;

      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("Who are you?", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 2) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("I am Afif.", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 3) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("Umm.... okay? Anyway, can you help me find a way out of here?", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 4) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("Yes, follow me.", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }


    if (textIndex == 5) {
      afifX+=3;
      rotate+=l;
      rotate2-=l;
      if (afifX >= 180) {
        fill(0);
        rect(483, 486, 60, 20); //Cover Going Down into Sewer
        fill(255);
        rotate = 360;
        rotate2 = 360;
        afifX-=3;
        afifY-=3;

        if (afifY == -199) {
          rotate = 360;
          rotate2 = 360;
          l = 0;
        }

        if (afifY <= -200) {
          background(bgBasement);
          disappear2 = 0;
          fill(0);
          rect(483, 486, 60, 20); //Cover Going Down into Sewer
          fill(255);
          benX+=3;


          //Benjamin Stands Up and Walks
          pushMatrix();
          scale(0.7);
          translate(400, 260-benY);
          //Shapes for Body
          fill(227, 177, 136);
          rect(-21+benX, 236-benY, 50, 50); //head
          rect(-9+benX, 286-benY, 25, 5); //neck

          //Rotation for leg 1
          fill(0);
          pushMatrix();
          translate(-6+benX, 373-benY);
          rotate(radians(rotate4));
          rect(0, 0, 20, 70); //leg 1
          popMatrix();

          //Rotation for leg 2
          pushMatrix();
          translate(-6+benX, 373-benY);
          rotate(radians(rotate5));
          rect(0, 0, 20, 70); //leg 2
          popMatrix();

          fill(255);
          rect(-16+benX, 292-benY, 40, 80); //body
          fill(227, 177, 136);
          rect(-3+benX, 308-benY, 15, 60); //arm
          popMatrix();

          rotate4+=l;
          rotate5-=l;
          if (hasExtended2 == false) {
            l = -2;
            if (rotate4 <= 320) {
              hasExtended2 = true;
            }
          } else {
            l = 2;
            if (rotate4 >= 360) {
              hasExtended2 = false;
            }
          }

          if (benX >= 320) {
            fill(0);
            rect(483, 486, 60, 20); //Cover Going Down into Sewer
            fill(255);
            rotate4 = 360;
            rotate5 = 360;
            benX-=3;
            benY-=3;

            if (benY <= -100) {
              benX = 80;
              benY = -300;
              afifX = 80;
              afifY = -300;
              option = 0;
              armMove = 0;
              rotate = 360;
              rotate2 = 360;
              rotate3 = 360;
              rotate4 = 360;
              hasExtended = false;
              hasExtended2 = false;
              l = 0;
              l2 = 0;
              tempPause = true;
              textIndex = 0;
              index = 9;
            }
          }
        }
      }
    }
  }
}

void sewers() {
  background(bgSewers);
  textAlign(LEFT);

  //Ben

  //Shapes for the Body
  fill(227, 177, 136);
  rect(-21+benX, 86+benY, 35, 35); //head
  rect(-11+benX, 121+benY, 17.5, 3.5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-9+benX, 170.5+benY);
  rotate(radians(rotate3));
  rect(0, 0, 14, 49); //leg 1
  popMatrix();

  //Rotation for leg 2
  pushMatrix();
  translate(-9+benX, 170.5+benY);
  rotate(radians(rotate4));
  rect(0, 0, 14, 49); //leg 2
  popMatrix();

  fill(255);
  rect(-16+benX, 124.5+benY, 28, 56); //body
  fill(227, 177, 136);
  rect(-6+benX+armMove2, 130.5+benY, 10.5, 36); //arm

  //Afif
  fill(227, 177, 136);
  rect(-21+afifX, 86+afifY, 35, 35); //head
  rect(-11+afifX, 121+afifY, 17.5, 3.5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-9+afifX, 194.5+afifY);
  rotate(radians(rotate));
  rect(0, 0, 14, 42); //leg 1
  popMatrix();

  //Rotation for leg 2
  pushMatrix();
  translate(-9+afifX, 194.5+afifY);
  rotate(radians(rotate2));
  rect(0, 0, 14, 42); //leg 2
  popMatrix();

  fill(0, 0, 255);
  rect(-16+afifX, 124.5+afifY, 28, 70); //body

  fill(227, 177, 136);
  pushMatrix();
  translate(-6+afifX+armMove, 140.5+afifY);
  rotate(radians(360));
  rect(0, 0, 10.5, 42); //arm
  popMatrix();


  if (afifX>=260 && rotate == 360 || textIndex == 10) {
    armMove = -3;
    if (textIndex == 0) {
      tempPause = false;
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("Isn’t that our president?!?!", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 1) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("No, he’s a traitor to humankind", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 2) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("I caught him wearing mismatched socks", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 3) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("I also caught him manipulating our population with mind control, but that’s not as\nimportant", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 4) {
      tempPause = true;
      if (option == 0) {
        option = getInt("CHOOSE YOUR RESPONSE:\n1. Okay that’s cool, but when did I ask??? \n2. That’s cool, but I miss my mommy. \n[ENTER 1 OR 2]");
      } else if (option == 1) {
        tempPause = false;
      } else if (option == 2) {
        textIndex = 8;
        tempPause = true;
      } else {
        println("ERROR");
        option = 0;
      }
    }

    if (textIndex == 5) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("Woah, it looks like Headmaster Pouya is rubbing off on you", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 6) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("I was going to help you leave, but with that attitude of yours, I guess you can rot in\nthis basement with me", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 7) {
      benX = -170;
      afifY = 130;
      afifX = 280;
      textIndex = 0;
      index = 10;
    }

    if (textIndex == 8) {
      tempPause = false;
    }

    if (textIndex == 9) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("Oh, that’s right, let me show you the rest of the way", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 10) {
      tempPause = true;
      afifX--;
      rotate+=l;
      rotate2-=l;

      if (hasExtended == false) {
        l = -2;
        if (rotate <= 320) {
          hasExtended = true;
        }
      } else {
        l = 2;
        if (rotate >= 360) {
          hasExtended = false;
        }
      }

      if (afifX <= -30) {
        armMove2 = -3;
        benX--;
        rotate3+=l2;
        rotate4-=l2;

        if (hasExtended2 == false) {
          l2 = -2;
          if (rotate3 <= 320) {
            hasExtended2 = true;
          }
        } else {
          l2 = 2;
          if (rotate3 >= 360) {
            hasExtended2 = false;
          }
        }
      }

      if (benX <= -30) {
        benX = 800;
        benY = 140;
        afifX = 700;
        afifY = 130;
        rotate = 360;
        rotate2 = 360;
        rotate3 = 360;
        rotate4 = 360;
        textIndex = 0;
        option = 0;
        tempPause = false;
        hasExtended = false;
        hasExtended2 = false;
        l = 0;
        l2 = 0;
        index = 11;
      }
    }
  } else {

    if (afifY >= 130) {

      benY+=4;
      if (benY >= 140) {
        benY-=4;
      }

      rotate+=l;
      rotate2-=l;

      if (hasExtended == false) {
        l = -2;
        if (rotate <= 320) {
          hasExtended = true;
        }
      } else {
        l = 2;
        if (rotate >= 360) {
          hasExtended = false;
        }
      }

      afifX++;
    } else {
      afifY+=4;
    }
  }

  fill(0);
  rect(44, 0, 67, 16);
  fill(255);
}

void hundredYears() {
  if (textIndex == 0) {
    background(0);
    textSize(80);
    textAlign(LEFT);
    text("100 YEARS LATER", 65, 250);
    textSize(15);
    text("Press ENTER to Continue", 315, 300);
  } else {

    background(bgSewers);

    //Dying Ben

    fill(227, 177, 136);
    quad(65, 300, 44, 330, 52, 332, 65, 315); //left arm
    quad(93, 300, 114, 330, 106, 332, 93, 315); //right arm

    fill(0);
    quad(65, 340, 55, 366, 70, 368, 76, 340); //left leg
    quad(93, 340, 103, 366, 88, 368, 82, 340); //right leg

    fill(227, 177, 136);
    rect(72, 282.5, 15, 3.5); //neck

    fill(255);
    rect(65, 285, 28, 56); //body

    //Afif
    fill(227, 177, 136);
    rect(-21+afifX, 86+afifY, 35, 35); //head
    rect(-11+afifX, 121+afifY, 17.5, 3.5); //neck

    //Rotation for leg 1
    fill(0);
    pushMatrix();
    translate(-9+afifX, 194.5+afifY);
    rotate(radians(360));
    rect(0, 0, 14, 42); //leg 1
    popMatrix();

    //Rotation for leg 2
    pushMatrix();
    translate(-9+afifX, 194.5+afifY);
    rotate(radians(360));
    rect(0, 0, 14, 42); //leg 2
    popMatrix();

    fill(0, 0, 255);
    rect(-16+afifX, 124.5+afifY, 28, 70); //body

    fill(227, 177, 136);
    pushMatrix();
    translate(-9+afifX, 140.5+afifY);
    rotate(radians(360));
    rect(0, 0, 10.5, 42); //arm
    popMatrix();

    if (textIndex == 1) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("Well it looks like it's the end of the road for you", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 2) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("I guess I should tell you the truth then", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 3) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("I am actually a hologram that was built to guard Elon Musk", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 4) {
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("You could have left anytime, and I wouldn’t have done anything", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    }

    if (textIndex == 5) {
      pushMatrix();
      translate(75, 255);
      rotate(radians(60));
      rect(0, 0, 27, 27);
      popMatrix();

      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Mysterious Deity ]", 100, 400);
      textSize(15);
      text("Benjamin is now deceased.", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    } else {
      fill(227, 177, 136);
      rect(65, 255, 27, 27); //head
    }

    if (textIndex == 6) {
      creditsIndex = 1;
      textIndex = 0;
      tempPause = false;
      index = 16;
    }
  }
}

void ladder() {
  background(bgLadder);
  tempPause = true;

  //Ben

  //Shapes for the Body
  fill(227, 177, 136);
  rect(-21+benX, 86+benY, 35, 35); //head
  rect(-11+benX, 121+benY, 17.5, 3.5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-9+benX, 170.5+benY);
  rotate(radians(rotate3));
  rect(0, 0, 14, 49);
  popMatrix();

  //Rotation for leg 1
  pushMatrix();
  translate(-9+benX, 170.5+benY);
  rotate(radians(rotate4));
  rect(0, 0, 14, 49); //leg 1
  popMatrix();

  fill(255);
  rect(-16+benX, 124.5+benY, 28, 56); //body
  fill(227, 177, 136);
  rect(-6+benX, 130.5+benY, 10.5, 36); //arm

  //Afif
  fill(227, 177, 136);
  rect(-21+afifX, 86+afifY, 35, 35); //head
  rect(-11+afifX, 121+afifY, 17.5, 3.5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-9+afifX, 194.5+afifY);
  rotate(radians(rotate));
  rect(0, 0, 14, 42); //leg 1
  popMatrix();

  //Rotation for leg 2
  pushMatrix();
  translate(-9+afifX, 194.5+afifY);
  rotate(radians(rotate2));
  rect(0, 0, 14, 42); //leg 2
  popMatrix();

  fill(0, 0, 255);
  rect(-16+afifX, 124.5+afifY, 28, 70); //body

  fill(227, 177, 136);
  pushMatrix();
  translate(-6+afifX, 140.5+afifY);
  rotate(radians(360));
  rect(0, 0, 10.5, 42); //arm
  popMatrix();

  if (textIndex == 0) {

    pushMatrix();
    translate(450, 359);
    rotate(radians(15));
    fill(255);
    rect(0, 0, 30, 10);
    popMatrix();

    pushMatrix();
    translate(450, 359);
    rotate(radians(15));
    fill(255, 0, 0);
    rect(0, 0, 15, 10);
    fill(255);
    popMatrix();


    if (afifX <= 413 && rotate == 360) {
      tempPause = false;
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Ben ]", 100, 400);
      textSize(15);
      text("Oooh, a mysterious pill. I should pick it up.", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    } else {
      afifX--;
      benX--;

      rotate3+=l2;
      rotate4-=l2;

      if (hasExtended2 == false) {
        l2 = -2;
        if (rotate3 <= 320) {
          hasExtended2 = true;
        }
      } else {
        l2 = 2;
        if (rotate3 >= 360) {
          hasExtended2 = false;
        }
      }

      rotate+=l;
      rotate2-=l;

      if (hasExtended == false) {
        l = -2;
        if (rotate <= 320) {
          hasExtended = true;
        }
      } else {
        l = 2;
        if (rotate >= 360) {
          hasExtended = false;
        }
      }
    }
  }



  if (textIndex == 1) {
    tempPause = true;

    if (afifX <= 180 && rotate == 360) {
      tempPause = false;
      noStroke();
      fill(255, 255, 255, 220);
      rect(68, 372, 664, 100);
      fill(0);
      stroke(1);
      textSize(17);
      text("[ Afif ]", 100, 400);
      textSize(15);
      text("This ladder should take you back to the surface", 100, 432);
      textSize(11);
      text("Press ENTER to Continue", 580, 455);
      fill(255);
    } else {
      afifX--;
      benX--;

      rotate3+=l2;
      rotate4-=l2;

      if (hasExtended2 == false) {
        l2 = -2;
        if (rotate3 <= 320) {
          hasExtended2 = true;
        }
      } else {
        l2 = 2;
        if (rotate3 >= 360) {
          hasExtended2 = false;
        }
      }

      rotate+=l;
      rotate2-=l;

      if (hasExtended == false) {
        l = -2;
        if (rotate <= 320) {
          hasExtended = true;
        }
      } else {
        l = 2;
        if (rotate >= 360) {
          hasExtended = false;
        }
      }
    }
  }

  if (textIndex == 2) {
    tempPause = true;
    if (option == 0) {
      option = getInt("CHOOSE THE ACTION:\n1. You climb the ladder even though you have a deatlhy fear of them. \n2. You take the mysterious pill that you found that supposedly takes away your fears.\n[ENTER 1 OR 2]");
    } else if (option == 1) {
      textIndex = 3;
    } else if (option == 2) {
      textIndex = 4;
    } else {
      println("ERROR");
      option = 0;
    }
  }

  if (textIndex == 3) {

    if (benX <= 60 && rotate3 == 360) {
      benY--;


      if (benY <= -250) {
        textIndex = 1;
        tempPause = false;

        index = 14;
      }
    } else {
      benX--;

      rotate3+=l2;
      rotate4-=l2;

      if (hasExtended2 == false) {
        l2 = -2;
        if (rotate3 <= 320) {
          hasExtended2 = true;
        }
      } else {
        l2 = 2;
        if (rotate3 >= 360) {
          hasExtended2 = false;
        }
      }
    }
  }

  if (textIndex == 4) {

    if (hasReached == true) {
      fill(227, 177, 136);
      rect(121, 29+benY2, 35, 35); //head
      rect(118, 40+benY2, 3.5, 17.5); //neck
      fill(0);
      rect(22, 42+benY2, 49, 14); //leg 1
      fill(255);
      rect(62, 35+benY2, 56, 28); //body
      fill(227, 177, 136);
      rect(75, 45+benY2, 36, 10.5); //arm

      benY2 +=7;

      if (benY2 >= 100) {
        creditsIndex = 2;
        textIndex = 0;
        tempPause = false;
        index = 16;
      }
    } else if (benX <= 60 && rotate3 == 360) {
      benY--;

      if (benY <= -250) {
        hasReached = true;
      }
    } else {
      benX--;

      rotate3+=l2;
      rotate4-=l2;

      if (hasExtended2 == false) {
        l2 = -2;
        if (rotate3 <= 320) {
          hasExtended2 = true;
        }
      } else {
        l2 = 2;
        if (rotate3 >= 360) {
          hasExtended2 = false;
        }
      }
    }
  }
}

void lunch() {
  rectMode(CORNER);
  background(bgLunch);

  pushMatrix();
  scale(0.7);
  //Shapes for Body
  fill(227, 177, 136);
  rect(-21+x, 236, 50, 50); //head
  rect(-9+x, 286, 25, 5); //neck

  //Rotation for leg 1
  fill(0);
  pushMatrix();
  translate(-6+x, 373);
  rotate(radians(rotate));
  rect(0, 0, 20, 70); //leg 1
  popMatrix();

  //Rotation for leg 2
  pushMatrix();
  translate(-6+x, 373);
  rotate(radians(rotate2));
  rect(0, 0, 20, 70); //leg 2
  popMatrix();

  fill(255);
  rect(-16+x, 292, 40, 80); //body
  fill(227, 177, 136);
  rect(-3+x, 308, 15, 60); //arm
  popMatrix();

  x+=2;
  rotate+=l;
  rotate2-=l;

  if (hasExtended == false) {
    l = -2;
    if (rotate <= 320) {
      hasExtended = true;
    }
  } else {
    l = 2;
    if (rotate >= 360) {
      hasExtended = false;
    }
  }

  if (x >= 700) {
    background(bgLunch);

    //Sitting At Table
    fill(227, 177, 136);
    rect(500-disappear, 265, 40, 40); //head
    rect(505-disappear, 305, 30, 5); //neck
    fill(255);
    rect(498-disappear, 310, 45, 19); //body
    fill(227, 177, 136);
    rect(498-disappear, 315, -20, 19); //arm 1
    rect(543-disappear, 315, 20, 19); //arm 2
    fill(255);
    if (x >= 800) {
      if (option == 0) {
        option = getInt("CHOOSE THE ACTION:\n1: Stay at School\n2: Skip School");
      }
      if (option > 2 || option < 0)
      {
        println("ERROR\nEnter Valid option3");
        option = getInt("CHOOSE THE ACTION:\n1: Stay at School\n2: Skip School");
      }
    }
  }

  if (option == 1) {
    textIndex = 0;
    tempPause = true;

    index = 14; //index
  }

  if (option == 2) {

    //Principal Animation
    benX+=3;
    pushMatrix();
    scale(0.8);
    //Pouya
    fill(227, 177, 136);
    rect(-21+benX, 86+100, 50, 50); //head
    rect(-9+benX, 136+100, 25, 5); //neck

    //Rotation for leg 1
    pushMatrix();
    fill(0);
    translate(-6+benX, 243+100);
    rotate(radians(rotate));
    rect(0, 0, 20, 60); //leg 1
    popMatrix();

    //Rotation for leg 2
    pushMatrix();
    translate(-6+benX, 243+100);
    rotate(radians(rotate2));
    rect(0, 0, 20, 60); //leg 2
    popMatrix();

    fill(255, 165, 0);
    rect(-16+benX, 142+100, 40, 100); //body

    fill(227, 177, 136);
    pushMatrix();
    translate(-3+benX, 158+100);
    rotate(radians(rotate3));
    rect(0, 0, 15, 60); //arm
    popMatrix();
    popMatrix(); 

    if (benX >= 540) {

      benX-=3;
      l=0;

      //Raise Arm
      rotate3-=3;
      if (rotate3 <= 290) {
        rotate3+=3;
      }

      //Ben Raise
      disappear = 1000;
      pushMatrix();
      scale(0.8);
      benY-=1;
      fill(227, 177, 136);
      rect(50+benX, 236+benY, 50, 50); //head
      rect(62+benX, 286+benY, 25, 5); //neck

      fill(255);
      rect(55+benX, 292+benY, 40, 80); //body
      fill(227, 177, 136);
      rect(68+benX, 308+benY, 60, 15); //arm

      fill(0);
      rect(96+benX, 358+benY, 30, 14); //leg 1
      rect(111+benX, 372+benY, 15, 50); //leg 2

      popMatrix();

      if (benY <= -25) {
        benY+=1;
        benX+=3;
        if (hasExtended == false) {
          l = -2;
          if (rotate <= 320) {
            hasExtended = true;
          }
        } else {
          l = 2;
          if (rotate >= 360) {
            hasExtended = false;
          }
        }
      }

      if (benX >= 1050) {
        benX = 10;
        benY = 0;
        index = 13;
      }
    }
  }
}

void pool() {
  background(bgPool);

  noStroke();
  fill(0, 150, 255);
  quad(144, 253, 627, 253, 774, 453, 40, 453); //Pool

  //Benjamin Jumps into pool
  stroke(0);
  strokeWeight(3);
  fill(255);

  benX+=3;
  benY = ((0.002)*(benX*benX)-180); //Diving animation

  textSize(20);
  text("AHHHH", benX, 200+benY);

  //Diving
  fill(227, 177, 136);
  rect(0+benX, 236+benY, 50, 50); //head
  rect(0+benX, 248+benY, -5, 25); //neck

  fill(0);
  rect(-85+benX, 247+benY, -70, 20); //leg 1
  rect(-85+benX, 257+benY, -70, 20); //leg 2

  fill(255);
  rect(-6+benX, 241+benY, -80, 40); //body
  fill(227, 177, 136);
  rect(-22+benX, 254+benY, -60, 15); //arm

  noStroke();
  fill(0, 150, 255);
  rect(150, 360, 500, 90); //Benjamin Cover Layer

  if (benX >= 415) {
    background(bgPool);
    noStroke();
    fill(0, 150, 255);
    quad(144, 253, 627, 253, 774, 453, 40, 453); //Pool

    if (benX >= 615) {
      stroke(0);
      fill(255);
      fill(227, 177, 136);
      rect(350, drownY1, 25, 50); //Drowning Hand
      drownY1-=d;

      noStroke();
      fill(0, 150, 255);
      rect(150, 360, 500, 90); //Benjamin Cover Layer #2
    }


    if (drownY1 <= 320.0) {
      d = -0.25;
    }

    if (drownY1 >= 370.0) {
      creditsIndex = 3;
      textIndex = 0;
      tempPause = false;
      index = 16;
    }
  }
}


void class3() {
  background(bgClass3);

  //Chair
  pushMatrix();
  noStroke();
  translate(-315, 75);
  fill(66, 40, 14);
  rect(400, 250, 20, 200);
  rect(400, 350, 100, 20);
  rect(500, 350, 20, 100);
  popMatrix();

  stroke(0);
  pushMatrix();
  scale(1.2);
  translate(-140, -20);

  //Benjamin Sitting
  fill(227, 177, 136);
  rect(232, 236, 50, 50); //head
  rect(244, 286, 25, 5); //neck

  fill(255);
  rect(237, 292, 40, 80); //body
  fill(227, 177, 136);
  rect(250, 308, 60, 15); //arm

  fill(0);
  rect(281, 358, 30, 14); //leg 1
  rect(296, 372, 15, 50); //leg 2

  fill(255);
  popMatrix();

  //Teacher
  pushMatrix();
  scale(1.2);
  translate(400, 110);
  fill(227, 177, 136);
  rect(-21, 86, 50, 50); //head
  rect(-9, 136, 25, 5); //neck

  fill(0);
  rect(-6, 243, 20, 60); //leg 1
  rect(-6, 243, 20, 60); //leg 2

  fill(0, 128, 0);
  rect(-16, 142, 40, 100); //body
  fill(227, 177, 136);
  rect(-3, 158, 15, 60); //arm
  popMatrix();

  if (textIndex == 0) {
    tempPause = false;
  }

  if (textIndex == 1) {
    textAlign(LEFT);
    noStroke();
    fill(255, 255, 255, 220);
    rect(68, 372, 664, 100);
    fill(0);
    stroke(1);
    textSize(17);
    text("[ Mr. Badri ]", 100, 400);
    textSize(15);
    text("Okay class please settle down. Today we will be learning about drumlins.", 100, 432);
    textSize(11);
    text("Press ENTER to Continue", 580, 455);
    fill(255);
  }

  if ( textIndex == 2) {
    textAlign(LEFT);
    noStroke();
    fill(255, 255, 255, 220);
    rect(68, 372, 664, 100);
    fill(0);
    stroke(1);
    textSize(17);
    text("[ Mr. Badri ]", 100, 400);
    textSize(15);
    text("So, in essence, drumlins are...", 100, 432);
    textSize(11);
    text("Press ENTER to Continue", 580, 455);
    fill(255);
  }

  if (textIndex == 3) {
    tempPause = true;
    if (sleepClass3 == 0) {
      sleepClass3 = getInt("CHOOSE THE ACTION:\n1. Fall Asleep\n2. Fall Asleep\n[ENTER 1 OR 2]");
    } else if (sleepClass3 == 1) {
      tempPause = false;
      textIndex = 4;
    } else if (sleepClass3 == 2) {
      tempPause = false;
      textIndex = 4;
    } else {
      println("\nERROR: Choose a Valid Option!\n");
      sleepClass3 = 0;
    }
  }

  if (textIndex == 4) {
  }

  if (textIndex == 5) {
    textAlign(LEFT);
    noStroke();
    fill(255, 255, 255, 220);
    rect(68, 372, 664, 100);
    fill(0);
    stroke(1);
    textSize(17);
    text("[ Mr. Badri ]", 100, 400);
    textSize(15);
    text("Oh, Benjamin is sleeping, I don’t really care to be honest", 100, 432);
    textSize(11);
    text("Press ENTER to Continue", 580, 455);
    fill(255);
  }

  if (textIndex == 6) {
    textIndex = 0;
    tempPause = true;
    index = 15;
  }
}

void class4() {
  background(bgClass4);
  //Circular rotation around the track
  float x = (constant + 1.9*sin(angle) * scalar)+180; //x rotation
  float y = (constant + 1.1*cos(angle) * scalar)+50; //y rotation
  fill(227, 177, 136);
  rect(x, y, 20, 20);
  angle = angle + speed;

  if (y <= 200.0 && textIndex == 0) {
    tempPause = false;
    textIndex = 1;
  }

  if (textIndex == 1) {
    fill(0);
    textSize(15);
    text("Press ENTER to Continue", 600, 470);
    fill(255);
  }

  if (textIndex == 2) {
    textIndex = 0;
    tempPause = false;
    index = 16;
  }
}

void morals() {
  background(0);
  textAlign(CENTER);
  textSize(14);
  if (creditsIndex == 0) {
    //Ben becomes Prez
    //Smiley Face
    pushMatrix();
    translate(175, -80);
    scale(0.85);
    fill(233, 224, 71);
    strokeWeight(7);
    ellipse(250, 250, 300, 300);
    fill(0);
    ellipse(200, 210, 30, 70);
    fill(0);
    ellipse(300, 210, 30, 70);
    fill (255);
    bezier(150, 295, 200, 370, 300, 370, 350, 295);
    line(150, 295, 350, 295);
    line(340, 100, 290, 75 );
    popMatrix();

    text("Benjamin recieves a cookie for his hard work, and goes on to become the president after exposing Elon Musk", 400, 290);
    text("Moral: Working hard and giving it your best will eventually reward you", 400, 340);
  }
  if (creditsIndex == 1) {
    //100 years later
    //Tombstone
    noStroke();
    fill(154, 145, 129);
    ellipse(400, 75, 200, 100);
    rect(300, 75, 200, 250);

    pushMatrix();
    scale(0.4);
    translate(750, 400);
    //Flower on Grave
    strokeWeight(1);
    fill(67, 106, 110);
    //Petals
    ellipse(200, 200, 125, 125);
    ellipse(300, 200, 125, 125);
    ellipse(200, 300, 125, 125);
    ellipse(300, 300, 125, 125);
    fill(141, 115, 158);
    ellipse(250, 250, 100, 100); //Center
    popMatrix();    

    //Tombstone text
    stroke(0);
    fill(255);
    text("BENJAMIN\n2026 - 2040", 400, 100);
    text("Here lies Benjamin,\nhe faced the wrath of Afif", 400, 175);    

    //Moral
    text("Moral: Treat others the way you want to be treated", 400, 400);
  }
  if (creditsIndex == 2) {
    //Don't take drugs
    //Pill
    pushMatrix();
    scale(10);
    pushMatrix();
    translate(27, 5);
    rotate(radians(15));
    rect(0, 0, 30, 10);
    popMatrix();

    pushMatrix();
    translate(27, 5);
    rotate(radians(15));
    fill(255, 0, 0);
    rect(0, 0, 15, 10);
    fill(255);
    popMatrix();
    popMatrix();

    text("Don't take drugs", 400, 290);
    text("Moral: Drugs can be extremely harmful to health as the consequences far\noutweigh the benefits and can lead to serious injuries", 400, 340);
  }
  if (creditsIndex == 3) {
    //Pool scene
    //Book
    strokeWeight(5);
    fill(255, 0, 0);
    rect(230, 40, 340, 220);
    fill(255);
    rect(400, 50, 150, 200);
    rect(400, 50, -150, 200);

    //Book Text
    textSize(20);
    fill(0);
    text("LEARNING", 325, 100);
    text("101", 475, 100);

    textSize(14);
    fill(255);
    text("Benjamin never learned how to swim...", 400, 290);
    text("Moral: In life, learning essential strategies and techniques can be beneficial\nto not only your own leisure and fun, but also to save your life.", 400, 340);
  }

  textSize(12);
  text("Press ENTER to restart", 400, 450);

  if (textIndex == 1) {
    textIndex = 0;
    creditsIndex = 0;
    rectX1 = 300;
    rectY1 = 175;
    rectX2 = 500;
    rectY2 = 225;
    rectX3 = 300; 
    rectY3 = 275; 
    rectX4 = 500; 
    rectY4 = 325; 
    benX = 10;  
    benY = 190;
    jumpDownStairs = false;
    momX = -200; 
    momY = 200; 
    option = 0; 
    car1X = -10; 
    car2X = 810;
    x = 0;
    rotate = 360;
    rotate2 = 360;
    hasExtended = false;
    l = 0;
    l2 = 0;
    armMove = 0;
    option2 = 0;
    hasExtended2 = false;
    quizFinished = false;
    rotate3 = 360;
    rotate4 = 360;
    rotate5 = 360;
    disappear = 0;
    afifX = 80;
    afifY = -300;
    armMove2 = 0;
    tempPause = true;
    drownY1 = 350.0;
    d = 1.0;
    sleepClass3 = 0;
    mousePressed = false;
    index = 0;
  }
}

void draw()
{
  background(bgMain);
  fill(255);
  textSize(10);
  text("By Afif Mahjub and Priyom Ghosh", 95, 490);

  if (index == -1) {
    splashScreen();
  }
  if (index == 0) {
    mainMenu();
  }
  if (index == 1) {
    home();
  }
  if (index == 2) {
    walkSchool();
  }
  if (index == 3) {
    meetFriends();
  }
  if (index == 4) {
    class1();
  }
  if (index == 5) {
    class2();
  }
  if (index == 6) {
    quizFail();
  }
  if (index == 7) {
    thrownInBasement();
  }
  if (index == 8) {
    basement();
  }
  if (index == 9) {
    sewers();
  }
  if (index == 10) {
    hundredYears();
  }
  if (index == 11) {
    ladder();
  }
  if (index == 12) {
    lunch();
  }
  if (index == 13) {
    pool();
  }
  if (index == 14) {
    class3();
  }
  if (index == 15) {
    class4();
  }
  if (index == 16) {
    morals();
  }
  if (index == 17) {
    backStory();
  }
  if (index == 18) {
    credits();
  }
  if (index == 19) {
    howToPlay();
  }

  if (index >= 1) {

    fill(107, 107, 107, 170);
    if (10 <= mouseX && mouseX <= 35) {
      if (5 <= mouseY && mouseY <= 30) {
        fill(65, 65, 65, 170);
        if (mousePressed) {
          textIndex = 0;
          creditsIndex = 0;
          rectX1 = 300;
          rectY1 = 175;
          rectX2 = 500;
          rectY2 = 225;
          rectX3 = 300; 
          rectY3 = 275; 
          rectX4 = 500; 
          rectY4 = 325; 
          benX = 10;  
          benY = 190;
          jumpDownStairs = false;
          momX = -200; 
          momY = 200; 
          option = 0; 
          car1X = -10; 
          car2X = 810;
          x = 0;
          rotate = 360;
          rotate2 = 360;
          hasExtended = false;
          l = 0;
          l2 = 0;
          armMove = 0;
          option2 = 0;
          hasExtended2 = false;
          quizFinished = false;
          rotate3 = 360;
          rotate4 = 360;
          rotate5 = 360;
          disappear = 0;
          afifX = 80;
          afifY = -300;
          armMove2 = 0;
          tempPause = true;
          drownY1 = 350.0;
          d = 1.0;
          sleepClass3 = 0;
          mousePressed = false;
          index = 0;
          instructionsButton = false;
        }
      }
    }
    rectMode(CORNER);
    noStroke();
    triangle(10, 15, 35, 15, 22.5, 5);
    rect(12.5, 15, 20, 15);

    fill(0, 0, 0, 0);
    rect(10, 5, 25, 25);
    stroke(5);
  }

}

void keyReleased() {
  if (key == ENTER && tempPause != true) {
    textIndex++;
  }
}
