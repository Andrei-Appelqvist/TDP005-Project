#include "bullet.h"

Bullet::Bullet(float x, float y){
  texture.loadFromFile("Sprites/projectile.png");
  shape.setPosition(x, y);
  shape.setTexture(texture);
  shape.setScale(0.5, 0.5);
  shape.rotate(90);
}
