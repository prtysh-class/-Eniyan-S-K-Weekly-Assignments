 float a,b,h ;
 float x;

void setup(){
  size (500,600);
  frameRate(2);
  choose();
  ran();
  lin (a,b,h);
  /*float q=PI;
  String p = nf(q,2,10);
  print(p);
  //println(String.format("PI= %.100f",PI,PI));*/
}


 
void lin(float a, float b, float h){
  fill (b, 0,0);
  noStroke();
  //line (a,height,a,height- h);
  rect (a,height-h,3, h);}
 

 


float ran(){
  x=random (0, 10);
  x= (  4*x + 1)%10;//% pow(2,32);
  x=x*100;
 x= round(x);
  print(x);
  println();
  return x;
  }
 
void choose(){
   for (int i = 0; i<=1000; i++){
       ran();
    if (x<800){
        if(400<x){
          
           h = map(x,400,800,0,500);
           b = map (h,0,500,50,200);
          
          lin(a,b,h);
          a= a+5;}}
    }
}