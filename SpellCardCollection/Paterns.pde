public class Paterns
{
  // The clover patern is a patern which creates a box of bullets and shoots all bullets to the middle with the same speed (which, funnily, creates a clover)
  void Clover()
  {
    // This part creates the top and bottom bullets of the box
    for(int j = 0; j < 2; j++)
    {
      // l is the height position and k is the x position (should have just used x and y)
      // The first for loop runs twice. These 2 for loop together create the bullets from left to right from top to bottom
      // This is important to note since, the j for loop runs twice. Once with a value of 0 and once with 1.
      // l = height * j, which means, l is once 0 and once the height of the screen. Top, bottom position
      int l = height * j;
      
      // Reset k (x position)
      float k = 0;
      
      // Now we actually create the bullets from left to right now that we know if we should create them on the top or bottom
      // 14 should have been a variable
      for(int i = 0; i < 14; i ++)
      {
        // (x position : y position (both simple) : the direction is supposed to always be the middle. Here, the middle is 400, 450. Substracting the x and y position of their respective coördinate we get a direction pointing to the middle : Speed : colour : size (all simple again))
        bullets.add(new Bullet(k, l, new PVector(400 - k, 450 - l), 2.5, color(255, 0, 0), standardBulletSize));
        
        // This should have been: k = i * (800 / 13). Just like 14 should have been a variable, 13 should have been the variable - 1 
        k += 800 / 13;
      }
    }
  
    // Repeat, but for left and right side of the box
    for(int j = 0; j < 2; j++)
    {
      int l = 0;
      float k = width * j;
    
      for(int i = 0; i < 16; i ++)
      {
        bullets.add(new Bullet(k, l, new PVector(400 - k, 450 - l), 2.5, color(255, 0, 0), standardBulletSize));
        l += 900 / 15;
      }
    }
  }
  
  // The BlueGrid is a patern in which creates a box of bullets and all bullets go to the other side of the screen
  // Repeat of clover, but 2 bullets are created instead and are instead going into the other direction from where they were created
  void BlueGrid()
  {
    for(int j = 0; j < 2; j++)
    {
      int l = height * j;
      float k = 0;
    
      for(int i = 0; i < 11; i ++)
      {
        bullets.add(new Bullet(k, l, new PVector(0, 450 - l), 2.5, color(0, 0, 255), standardBulletSize));
        bullets.add(new Bullet(k, l, new PVector(0, 450 - l), 3.5, color(0, 0, 255), standardBulletSize));
        k += 800 / 10;
      }
    }
  
    for(int j = 0; j < 2; j++)
    {
      int l = 0;
      float k = width * j;
    
      for(int i = 0; i < 12; i ++)
      {
        bullets.add(new Bullet(k, l, new PVector(400 - k, 0), 2.5, color(0, 0, 255), standardBulletSize));
        bullets.add(new Bullet(k, l, new PVector(400 - k, 0), 3.5, color(0, 0, 255), standardBulletSize));
        l += 900 / 11;
      }
    }
  }
  
  // The GreenGrid is a patern in which creates a box of bullets and all bullets go to the other side of the screen in a diagnol direction
  // Repeat of BlueGrid, but shot diagnol
  void GreenGrid()
  {
    for(int j = 0; j < 2; j++)
    {
      int l = height * j;
      float k = 0;
    
      for(int i = 0; i < 11; i ++)
      {
        bullets.add(new Bullet(k, l, new PVector(450, 450 - l), 2, color(0, 255, 0), standardBulletSize));
        bullets.add(new Bullet(k, l, new PVector(-450, 450 - l), 2, color(0, 255, 0), standardBulletSize));
        k += 800 / 10;
      }
    }
  
    for(int j = 0; j < 2; j++)
    {
      int l = 0;
      float k = width * j;
    
      for(int i = 0; i < 12; i ++)
      {
        bullets.add(new Bullet(k, l, new PVector(400 - k, 400), 2, color(0, 255, 0), standardBulletSize));
        bullets.add(new Bullet(k, l, new PVector(400 - k, -400), 2, color(0, 255, 0), standardBulletSize));
        l += 900 / 11;
      }
    }
  }
}
