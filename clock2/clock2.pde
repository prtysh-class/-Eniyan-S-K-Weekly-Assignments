float i = 0;
float j=0;
PShape  clock;
PShape numbers;
int x = 0;
int y = 0;
int z =0;
float c;
String m,h,s;

//float currentTime;



void setup(){
  size(500,500);
  
  frameRate(1);
   //currentTime =  millis();
   clock = loadShape("clock2.svgz");
   clock.disableStyle();
 
   numbers = clock.getChild("numbers");
   numbers.enableStyle();
}


void draw(){
  background(c,0,0, 50);
  c= map(x,0, 60, 150,50);
  
  noFill();
  stroke(220);
   shape(clock, 0,0 , 500,500);
   fill(255);
   shape(numbers,0,0 , 500,500);
   
  translate (width/2, height/2);
  fill(255);
  noStroke();
  ellipse (0,0, 15,15);
  
   
 //numeric timer
    if (z % 3600 == 0){
   h=   str(z/3600) + ":"  ;
  }
  
  
  if (y % 60 == 0){
   m=  str(y/60) + ":" ;
  }
  
  s= " "+ str(x);
  
pushMatrix();
  //rectMode(CENTER);
  textSize(28);
  textAlign(CENTER);
  fill(100);
  text(h, -65, 175, 50,50);
  text(m, -25, 175, 50,50);
  text(s, 10, 175, 50,50);
  
  
  // hour hand
  pushMatrix();
  rotate (i/3600);
  z= z+1;
   if (z>3600*24){
     z=0;
   }
  stroke(255);
  line (0,15, 0, -50);
  popMatrix();
  
    // minute hand
    pushMatrix();
    rotate (i/60);
    y=y+1;
    if (y>3600){
      y = 0;
    }
    stroke(255);
    line (0,15, 0, -75);
    popMatrix();
  
      // second hand
        rotate (i);
        x=x+1;
        if (x>59){
           x= 0;
        }
        stroke (255);
        line (0,15, 0,-100);
    
     
 popMatrix();
     
   i=i+(PI/30);
 }



/* pushMatrix();
       while (x %60 == 0){
       rotate (j);
       stroke (255);
       line (0,15, 0, -75);
       j = j+ (PI/30);}
       popMatrix();*/





/*  pushMatrix();
  //if (currentTime % 1000 == 0){
   
   // rotate(TWO_PI*(currentTime%(1000))/(1000));
    rotate (i);
    //ellipse (100,0,15,15);
    stroke (255);
    line (25,0, 150,0);
  //}
  popMatrix();

 
  currentTime = millis();
  
  
}*/