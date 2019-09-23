int starnumber = 1000;
star[] stars = new star [starnumber];
float z =10;//speed variable. change this number to change all the speeds

void setup(){
  size (900,700);
  for(int i = 0; i<starnumber; i++){
 stars[i] = new star (width/2, height/2,random (-z,z), random(-z,z), random (1,4));
  }
}

void draw(){
 background (0);
 for (int i=0; i< stars.length; i++){
   stars[i].move();
   stars[i].display();
   ellipse(width, height,random (5-6),random(5-6));
 }
}
class star {
    float x;
   float y;
   float speedx;
   float speedy;
   float size;
   
   star(float xin, float yin, float speedxin, float speedyin, float sizein){
         x = xin;
         y = yin;
         speedx = speedxin;
         speedy = speedyin;
         size = sizein;
         }
   void move(){
     if(mousePressed){
       if((x >mouseX) && (speedx < 0)){
           speedx = speedx * -1;}
       if((x <mouseX) && (speedx > 0)){
           speedx = speedx * -1;}
       if((y >mouseY) && (speedy < 0)){
             speedy = speedy*-1;}
       if((y <mouseY) && (speedy > 0)){
             speedy = speedy*-1;}
       x = x + speedx;
       y = y + speedy;      
       if ((x<0) || (x>width)) {
       x=mouseX;
       y=mouseY;
       speedx=random(-z,z);
       speedy=random(-z,z);
     }  
   if ((y<0) || (y>height)) {
         x=mouseX;
         y=mouseY;
         speedx=random(-z,z);
         speedy=random(-z,z);
           }
    }  
  else {
       if ((x<0) || (x>width)) {
       x=width/2;
       y=height/2;
       speedx=random(-z,z);
       speedy=random(-z,z);
        }
   if ((y<0) || (y>height)) {
         x=width/2;
         y=height/2;
         speedx=random(-z,z);
         speedy=random(-z,z);
       }
        if((x >width/2) && (speedx < 0)){
           speedx = speedx * -1;}
       if((x <width/2) && (speedx > 0)){
           speedx = speedx * -1;}
       if((y >height/2) && (speedy < 0)){
             speedy = speedy*-1;}
       if((y <height/2) && (speedy > 0)){
             speedy = speedy*-1;}
       x = x + speedx;
       y = y + speedy;
   }
}
 void display(){
   fill(255);
   ellipse (x,y,size,size);
   fill(0);
   ellipse(width/2, height/2, 20,20);
    }
}


