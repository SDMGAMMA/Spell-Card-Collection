// Setting up objects
Player player = new Player(); // Player
Paterns paterns = new Paterns(); // Patern holder

// Time value (addTime could've been addusted with more time)
int time;
int addTime = 0;

// Bullet size
int standardBulletSize = 20;

// The ArrayList of bullets
ArrayList<Bullet> bullets;

void setup()
{
  size(800, 900);
  
  // Setting up ArrayList
  bullets = new ArrayList<Bullet>();  
}

void draw()
{
  // time always equals time the game is running (in whole seconds) and setting background
  time = (int)millis() / 1000;
  background(0);
  
  // Show player
  player.Display();
  
  // Run for every bullet...
  for(Bullet b: bullets)
  {
    // ... it's movement and display
    b.Execute();
    
    // ... if it touches the player...
    if(dist(player.x, player.y, b.location.x, b.location.y) < player.hitBoxSize / 2 + b.bulletSize / 2)
    {
      // ... exit the game
      exit();
    }
  }
  
  // This part could have been done differently (For example by making a boolean array instead of addTime)
  
  // At 2 seconds activate Clover patern ONCE
  if(time + addTime == 2)
  {
    paterns.Clover();
    addTime ++;
  }
  
  // At 7 seconds (addTime equals at the moment 1) activate BlueGrid patern ONCE
  if(time + addTime == 8)
  {
    paterns.BlueGrid();
    addTime ++;
  }
  
  // At 12 seconds (addTime equals at the moment 2) activate GreenGrid patern ONCE
  if(time + addTime == 14)
  {
    paterns.GreenGrid();
    addTime ++;
  }
}

void keyPressed()
{
  // Movement input
  player.MoveInput();
}

void keyReleased()
{
  // Movement output
  player.MoveOutput();
}
