#ifndef OBJECT_CLASS
#define OBJECT_CLASS
#include <SFML/Graphics.hpp>
/**\Object Class
*Represents all active objects in the game.*/
class Object{
public:
/**Draws the saved sprite "shape" to a RenderWindow refrence.*/
  void draw(sf::RenderWindow &);
/**Returns the saved Sprite "shape".*/
  sf::Sprite getShape();
/**Moves the saved sprite "shape" by adding or subtracting the sprites x and/or
*y position*/
  void move(float, float);
protected:
  /**Represents the texture used in Shape.*/
  sf::Texture texture;
  /**Represents the objects sprite.*/
  sf::Sprite shape;
};

#endif
