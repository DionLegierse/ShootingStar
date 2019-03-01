import processing.serial.*;

Serial serPort;

boolean isStarted = false;

Object[] objects = new Object[100];
int count = 0;

void setup()
{
  size (512, 448);
  background (0);
  serPort = new Serial (this, Serial.list()[32], 115200);
  thread("readSerial");
  println ("boot");
}

void draw()
{
  drawFrame();
}

void readSerial()
{
  while (true)
  {
    if (!isStarted)
    {
      int x = getByte();
      if (x != -1)
        println (x);
    }
    
    if (isStarted)
    {
      
    }
  }
}

int getByte ()
{
  int b = -1;
  
  while (serPort.available() > 0)
  {
    int readByte = serPort.read();
    
    if (readByte == 13 || readByte == 10)
      break;
      
    b = readByte;
    
    serPort.write (b);
  
    println (b);
  }
  
  return b;
}

void drawFrame()
{
  clear();
  
  for (int i = 0; i < count; i++)
  {
    if (objects[i] != null)
    {
      objects[i].show();
    }
  }
}
