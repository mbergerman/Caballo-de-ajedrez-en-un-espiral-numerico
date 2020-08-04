
static int side = 111;
int[][] tablero = new int[ 111 ][ 111 ];
boolean[][] visitado = new boolean[ 111 ][ 111 ];

int x = floor(side/2);
int y = floor(side/2);

color c = color(255, 0, 0);
int jumps = 0;
float deltaHue = 0;

void setup(){
  size(800, 800);
  x = floor(side/2);
  y = floor(side/2);
  int n = 1, dir = 0, len = 1, i = 0;
  while(x >=0 && x < side && y >= 0 && y < side){
    tablero[x][y] = n;
    n++;
    if(i == len){ //<>//
      i = 0;
      dir = (dir+1) % 4;
      if(dir == 0 || dir == 2) len++;
    }
    i++;
    if(dir == 0) x++; //<>//
    if(dir == 1) y--;
    if(dir == 2) x--;
    if(dir == 3) y++;
  }
  
  for(x = 0; x < side; x++){
    for(y = 0; y < side; y++){
      if(tablero[x][y] == 0) tablero[x][y] = 1000000;
      visitado[x][y] = false;
    }
  }

  background(0);
  colorMode(HSB, 100);
  textAlign(CENTER, CENTER);
  for(int x = 0; x < side; x++){
    for(int y = 0; y < side; y++){
      fill(0);
      //text(tablero[x][y], (x+1.0)*(width/(side+1.0)), (y+1.0)*(height/(side+1.0)));
    }
  }

  x = floor(side/2);
  y = floor(side/2);

  boolean finished = false;
  while(finished == false){
    int record = 1000000;
    int newX = 0;
    int newY = 0;
    int x2, y2;
    
    x2 = x+2; y2 = y+1;  
    if(x2 >= 0 && x2 < side && y2 >= 0 && y2 < side){
      if(visitado[x2][y2] == false && tablero[x2][y2] < record){
        record = tablero[x2][y2];
        newX = x2;
        newY = y2;
      }
    }
    x2 = x+2; y2 = y-1;  
    if(x2 >= 0 && x2 < side && y2 >= 0 && y2 < side){
      if(visitado[x2][y2] == false && tablero[x2][y2] < record){
        record = tablero[x2][y2];
        newX = x2;
        newY = y2;
      }
    }
    x2 = x-2; y2 = y+1;  
    if(x2 >= 0 && x2 < side && y2 >= 0 && y2 < side){
      if(visitado[x2][y2] == false && tablero[x2][y2] < record){
        record = tablero[x2][y2];
        newX = x2;
        newY = y2;
      }
    }
    x2 = x-2; y2 = y-1;  
    if(x2 >= 0 && x2 < side && y2 >= 0 && y2 < side){
      if(visitado[x2][y2] == false && tablero[x2][y2] < record){
        record = tablero[x2][y2];
        newX = x2;
        newY = y2;
      }
    }
    x2 = x+1; y2 = y+2;  
    if(x2 >= 0 && x2 < side && y2 >= 0 && y2 < side){
      if(visitado[x2][y2] == false && tablero[x2][y2] < record){
        record = tablero[x2][y2];
        newX = x2;
        newY = y2;
      }
    }
    x2 = x+1; y2 = y-2;  
    if(x2 >= 0 && x2 < side && y2 >= 0 && y2 < side){
      if(visitado[x2][y2] == false && tablero[x2][y2] < record){
        record = tablero[x2][y2];
        newX = x2;
        newY = y2;
      }
    }
    x2 = x-1; y2 = y+2;  
    if(x2 >= 0 && x2 < side && y2 >= 0 && y2 < side){
      if(visitado[x2][y2] == false && tablero[x2][y2] < record){
        record = tablero[x2][y2];
        newX = x2;
        newY = y2;
      }
    }
    x2 = x-1; y2 = y-2;  
    if(x2 >= 0 && x2 < side && y2 >= 0 && y2 < side){
      if(visitado[x2][y2] == false && tablero[x2][y2] < record){
        record = tablero[x2][y2];
        newX = x2;
        newY = y2;
      }
    }
    
    
    visitado[x][y] = true;
    if(record != 1000000){
      stroke(c);
      c = color(deltaHue*jumps, 100, 90);
      line((x+1)*(width/(side+1.0)), (y+1.0)*(height/(side+1.0)), (newX+1.0)*(width/(side+1.0)), (newY+1.0)*(height/(side+1.0)));
      x = newX;
      y = newY;
      jumps++;
    }else{
      if(deltaHue == 0){
        deltaHue = 100.0/jumps;
        jumps = 0;
        for(x = 0; x < side; x++){
          for(y = 0; y < side; y++){
            visitado[x][y] = false;
          }
        }
        x = floor(side/2);
        y = floor(side/2);
        strokeWeight(2);
      }else{
        finished = true;
        //text(tablero[x][y], (x+1.0)*(width/(side+1.0)), (y+1.0)*(height/(side+1.0)));
        println(tablero[x][y]);
      }
    }
  }
}

void draw(){}
