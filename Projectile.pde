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
    if (!destroyed) {
      fill(0, 255, 0);
      rect(center.x - size.x / 2, center.y - size.y / 2, size.x, size.y);
    }
  }

  void collisionCheckProjectile(Projectile other) {
    if (!destroyed && !other.destroyed &&
      abs(this.center.x - other.center.x) < (this.size.x + other.size.x) / 2 &&
      abs(this.center.y - other.center.y) < (this.size.y + other.size.y) / 2) {
      destroyed = true;
      other.destroyed = true;
    }
  }

  void collisionCheckAlien(alien[][] alien) {
    for (int r = 0; r < alien.length; r++) {
      for (int c = 0; c < alien[0].length; c++) {
        if (alien != null && !alien.destroyed &&
          abs(this.center.x - alien[r][c].center.x) <
          (this.size.x + alien[r][c].size.x) / 2 &&
          abs(this.center.y - alien[r][c].center.y) <
          (this.size.y + alien[r][c].size.y) / 2) {
          this.destroyed = true;
          alien[r][c].destroyed = true;
          return;
        }
      }
    }
  }

  void move() {
    if (frameCount % 30 == 0 && destroyed == false) {
      center.add(speed);
    }
  }
}
