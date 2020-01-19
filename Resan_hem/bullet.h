#ifndef BULLET_CLASS
#define BULLET_CLASS
#include <SFML/Graphics.hpp>
#include "object.h"

/*! The bullet class inherits from the object class as it creates a moving object in the game. This is the class that creates the projectile that is being shot when the player presses the spacebar. */
class Bullet : public Object{
public:
    /*! The bullet constructor takes two float parameters, x- and y-position(in that order). The constructor then loads the sprite for the bullet object, sets the scale for the sprite and sets position to the given parameters. */
  Bullet(float, float);
    /*! The bullet destructor is default*/
  ~Bullet() = default;
};
#endif
