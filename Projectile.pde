class Projectile {
  PVector size = new PVector(5, 10);
  PVector center;
  PVector speed;
  Boolean destroyed = false;

  Projectile(PVector c, PVector spd) {
    center = c;
    speed = spd;
  }

  void display() {
    if (destroyed == false) {
      fill(0, 255, 0);
      rect(center.x, center.y, size.x, size.y);
    }
  }

  void collisionCheckProjectile(Projectile other) {
    if (this.center.dist(other.center) <= this.size.y) {
      destroyed = true;
    }
  }
  
  void collisionCheckAlien(alien[][] other) {
    if (this.center.dist(other.center) <= this.size.y) {
      destroyed = true;
  }

  void move() {
    if(frameCount % 30 == 0 && destroyed == false) {
      center.x = center.x + speed.x;
      center.y= center.y + speed.y;
    }
  }
}
