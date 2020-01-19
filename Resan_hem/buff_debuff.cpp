#include "buff_debuff.h"

Buff_debuff::Buff_debuff(float pos_x, float pos_y, float mult) : multiplier{mult}{
  shape.setPosition(pos_x, pos_y);
}


float Buff_debuff::getMultiplier(){
  return multiplier;
}

Turbo::Turbo(float pos_x, float pos_y) : Buff_debuff{pos_x, pos_y, 2}{
  texture.loadFromFile("Sprites/turbo.png");
  shape.setTexture(texture);
  shape.setScale(0.6, 0.6);
}

Bottle::Bottle(float pos_x, float pos_y) : Buff_debuff{pos_x, pos_y, 0.5}{
  texture.loadFromFile("Sprites/rum.png");
  shape.setTexture(texture);
  shape.setScale(0.08, 0.1);
}
