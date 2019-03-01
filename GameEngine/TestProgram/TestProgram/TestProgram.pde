import processing.serial.*;

Serial serPort;

boolean isStarted = false;

Object[] objects = new Object[100];
int count = 0;

void setup()
{
  size (512, 448);
  background (0);
  printArray (Serial.list());
  serPort = new Serial (this, Serial.list()[32], 115200);
}

void draw()
{
  int readByte = -1;
  if (serPort.available() > 0)
    readByte = readSerial();
  
  if (readByte == 128)
  {
    isStarted = true;
    println ("started");
  }
  
  if (isStarted)
  {
    thread ("getCommand");
    
    drawFrame();
  }
}

void getCommand()
{
  
  if (serPort.available() > 0)
  {
    int cmd = readSerial();
    
    switch (cmd)
    {
      case 1:
        addEntity();
        break;
      case 2:
        moveEntity();
        break;
      
      default:
        break;
    }
  }
}

void addEntity()
{
  int xH = readSerial();
  int xR = readSerial();
  int yH = readSerial();
  int yR = readSerial();
  
  objects[count++] = new Object(150, (xH * 100) + xR, (yH * 100 + yR), 16, 16);
}

void moveEntity()
{
  int index = readSerial();
  int xH = readSerial();
  int xR = readSerial();
  int yH = readSerial();
  int yR = readSerial();
    
  objects[index].setX((xH * 100) + xR);
  objects[index].setY((yH * 100) + yR);
}

int readSerial()
{
  int value = -1;
  
  while (value == -1)
  {
  while (serPort.available() > 0)
  {
    int readByte = serPort.read();
    
    if (readByte == 13 || readByte == 10)
      break;
      
    value = readByte;
    
    serPort.write (value);
  
    println (value);
  }    
  }
  return value;
}

void drawFrame()
{
  clear();
  
  for (int i = 0; i < 100; i++)
  {
    if (objects[i] != null)
    {
      objects[i].show(); //<>//
    }
  }
}
