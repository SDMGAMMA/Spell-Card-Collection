public class Player
{
  // Set variables
  public int hitBoxSize = 10;
  
  public int x = 400;
  public int y = 800;
  private boolean [] keys = new boolean[1028];

  // Display player (This should have been seperated into a move and display function and both put in execute instead (like the bullet is))
  public void Display()
  {
    // The keys array hold a boolean if a certain key is being pressed. The keycodes of up, down, left and right are 38, 40, 37, 39
    if(keys[39])
    {
      x += 3;
    }
    
    if(keys[37])
    {
      x -= 3;
    }
    
    if(keys[38])
    {
      y -= 3;
    }
    
    if(keys[40])
    {
      y += 3;
    }
    
    // Clamp position in screen
    x = constrain(x, hitBoxSize / 2, width - hitBoxSize / 2);
    y = constrain(y, hitBoxSize / 2, height - hitBoxSize / 2);
    
    // Display player
    fill(255, 0, 0);
    ellipse(x, y, hitBoxSize, hitBoxSize);
  }
 
  // in these functions, the program will check if a certained key is being pressed and released and storing that information in keys
  // (processing can only register one key pressed and released at a time. Not multiples. For this reason, we can't just say, aslong as this button is being pressed, do this since if we hold both up and left, movement will only be one direction)
  public void MoveInput()
  {
    keys[keyCode] = true;
  }
  
  public void MoveOutput()
  {
    keys[keyCode] = false;
  }
}
