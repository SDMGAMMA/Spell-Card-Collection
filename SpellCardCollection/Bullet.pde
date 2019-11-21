public class Bullet
{
  // Set variables
  PVector location;
  PVector direction;
  float bulletSpeed;
  color bulletColour;
  int bulletSize;
  
  // x position, y position, direction, speed, colour, size
  Bullet(float x, float y, PVector dir, float speed, color colour, int size)
  {
    // Give the bullet it's variable values
    bulletColour = colour;
    bulletSize = size;
    bulletSpeed = speed;
    location = new PVector(x, y);
    direction = new PVector(dir.x, dir.y);
  }
  
  // Move and display bullet
  void Execute()
  {
    Move();
    Display();
  }
  
  // Move the bulet
  void Move()
  {
    // First, we make the vector the length of 1 and then apply it's speed. Then, we move the bullet
    direction.normalize();
    direction.mult(bulletSpeed);
    location.add(direction);
  }
  
  void Display()
  {
    // Display bullet (simple)
    fill(bulletColour);
    ellipse(location.x, location.y, bulletSize, bulletSize);
  }
}
