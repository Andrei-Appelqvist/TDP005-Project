#ifndef BUFF_CLASS
#define BUFF_CLASS
#include <SFML/Graphics.hpp>
#include "object.h"
#include <vector>

/*! Class Buff_debuff is a parent class to the buff and the debuff classes Turbo and Bottle. */
class Buff_debuff : public Object{
public:
  /*! The Buff_debuff constructor takes three floats as parameters. The first is the x-position of the buff, the second is the y-position of the buff relative to the gamefield, and the third is a multiplier that decides how the playerspeed is going to be affected. */
  Buff_debuff(float, float, float);
  /*! The Buff_debuff destructor is default. */
  virtual ~Buff_debuff() = default;
  /*! Getter function that returns the protected member variable, multiplier. */
  float getMultiplier();
protected:
  /*! Protected member variable that contains the multiplier that affects the player in case of collision with buff/debuff.  */
  float multiplier{};
};

/*! The turbo class creates a buff object, turbo, that increases the player speed when collided with.  */
class Turbo : public Buff_debuff{
public:
  /*! The turbo constructor takes two float parameters, x- and y-position(in that order). The constructor then loads the sprite for the turbo object, sets the scale for the sprite, sets the object position to the given parameters and sets the multiplier to two(2). */
  Turbo(float, float);
};
/*! The bottle class creates a debuff object, bottle, that decreases the player speed when collided with.  */
class Bottle : public Buff_debuff{
public:
    /*! The bottle constructor takes two float parameters, x- and y-position(in that order). The constructor then loads the sprite for the bottle object, sets the scale for the sprite, sets the object position to the given parameters and sets the multiplier to 0.5. */
  Bottle(float, float);
};

#endif
