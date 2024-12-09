class specialEnemy {
  int health;
  int speed;
  PVector center;
  int projChance;
  boolean destroyed;
  PVector size;
  Projectile shot;
  Projectile[] projectiles;

  specialEnemy(PVector c, int h, int spd, int chance, PVector s) {
    center = c;
    health = h;
    speed = spd;
    projChance = chance;
    size = s;
    destroyed = false;
    projectiles = new Projectile[5];
  }

  void display() {
  }

  void collisionCheck(Projectile other) {
    if (!destroyed && !other.destroyed &&
      abs(this.center.x - other.center.x) < (this.size.x + other.size.x) / 2 &&
      abs(this.center.y - other.center.y) < (this.size.y + other.size.y) / 2) {
      destroyed = true;
      other.destroyed = true;
    }
  }

  void shoot() {
    if (int(random(100)) < projChance) {
      PVector projLocation = new PVector(center.x, center.y - size.y / 2);
      PVector projSPD = new PVector(0, 10);
      for(int i = 0; i < projectiles.length; i++) {
        if(projectiles[i] == null) {
         projectiles[i] = new Projectile(projLocation, projSPD);
         break;
        }
      }
    }
  }
  
  void updateProjectiles() {
   for (int i = 0; i < projectiles.length; i++) {
     if (projectiles[i] != null) {
      projectiles[i].move(); 
     }
     if (projectiles[i].center.y > height || projectiles[i].destroyed) {
      projectiles[i] = null; 
     }
   }
  }

  void move() {
    if (frameCount % 5 == 0 && !destroyed) {
      center.x = center.x + speed;
    }
  }
}
