#include "object.h"

void Object::draw(sf::RenderWindow & window){
  window.draw(shape);
}

sf::Sprite Object::getShape(){
  return shape;
}

void Object::move(float x, float y){
  shape.move(x, y);
}
