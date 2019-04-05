public class Object
{
  private int _color;
  private int _x;
  private int _y;
  private int _sizeX;
  private int _sizeY;
  
  public Object(int aColor, int aX, int aY, int aSizeX, int aSizeY)
  {
     this._color = aColor;
     this._x = aX;
     this._y = aY;
     this._sizeX = aSizeX;
     this._sizeY = aSizeY;
  }
  
  public void show()
  {
    fill (_color);
    rect (_x, _y, _sizeX, _sizeY);
  }
  
  public void setX(int aX) { this._x = aX; }
  public void setY(int aY) { this._y = aY; }
}
