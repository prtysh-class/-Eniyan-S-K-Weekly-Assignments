import processing.sound.*;
SoundFile file;
Amplitude amp;
SinOsc sinA;
SinOsc sinB;
SinOsc sinC;
SinOsc sinE;
SinOsc sinF;
Reverb reverb;

PShape  clock;
PShape numbers;
float t,x,i;
String m;
int a = 10;


void setup(){
  size (500,500);
   //background(150);
  
  //SOUND
  file = new SoundFile(this, "trss.mp3");
   file.amp(0.00001);
   file.play();
   file.loop();
   
   
   amp = new Amplitude(this);
   amp.input(file);
   
   sinA = new SinOsc(this);
   sinB= new SinOsc(this);
   sinC = new SinOsc(this);
    sinE= new SinOsc(this);
     sinF= new SinOsc(this);
   reverb = new Reverb (this);
   
   //CLOCK
   frameRate(5);
   clock = loadShape("clock2.svgz");
   clock.disableStyle();
 
   numbers = clock.getChild("numbers");
   numbers.enableStyle();
   

     
}

void draw(){
  sinA.stop();
  sinB.stop();
  sinC.stop();
  sinE.stop();
  sinF.stop();
  
     
  sinA.freq(220); 
  sinB.freq(493);
  sinC.freq(523);
  sinE.freq(659);
  sinF.freq(698);
 /* reverb.process(sinA);
  reverb.process(sinB);
  reverb.process(sinC);
  sinA.amp (0.5);
  sinB.amp (0.5);
  sinC.amp (0.5);*/
      
 if (x<0.2){
   sinA.play();}
   
  if (x>.2){
    if(x<0.25){
    sinB.play();
    //a=a+5;
    }}
 /* else {
    sinA.stop();}*/
  if (x>0.25){
    if (x<0.3){
    sinC.play();
  }}
  
  if (x>.3){
    if (x<0.4){
    sinE.play();
  }}
  
  if (x>0.4){
    sinF.play();}
    
  
  
  //Clock
  noFill();
  stroke(220);
   shape(clock, 0,0 , 500,500);
   fill(255);
   shape(numbers,0,0 , 500,500);
   
  translate (width/2, height/2);
  noStroke();
  ellipse (0,0, 15,15);
  
  x= amp.analyze();
  x=x*100000;
  
  m=str(x);
  println(x);

  pushMatrix();
  
     if (x>.2){
      rotate (i);
      stroke (255);
      line (0,15, 0,-100);
      i=i+(PI/30);
       }
 popMatrix();
}
  

    