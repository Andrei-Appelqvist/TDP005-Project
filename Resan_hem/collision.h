#ifndef COLLISION_CLASS
#define COLLISION_CLASS
#include <SFML/Graphics.hpp>
#include "car.h"
#include "buff_debuff.h"
#include "bullet.h"

/*! The role of the collision class is to check if the active objects on the screen are colliding with each other. The collision class interacts with the Car class and also with its children player and enemy. This class also interacts with the Buff_debuff class and it's children Turbo and Bottle. Lastly this class also interacts with the bullet class. */
class Collision{
public:
  /*! The collision constructor has no particular role, it is only needed to create a collision object that can be used to call the different collision functions. */
  Collision(){}
  /*! Function takes a two object references, the first to the player object and the second to the enemy object. The function checks if the player global bounds are intersecting the enemy global bounds and returns a bool true if they do or a bool false if they don't. */
  bool player_enemy_collide(Player&, Enemy&);
  /*! Function takes three parameters. The first is a reference to a player object, the second is a reference to a buff or debuff object and the third is an sf::Time object. The function checks if the global bound of the two objects intersect. If the object intersect, the player multiplier is changed to that of the buff/debuff, the player variable stateIsChanged is changed to true if it is not already that and ten seconds are added to the player variable stateTime during which the player is affected by the buff. The player state is changed everytime there is a collision between these objects. If the player state is already changed then the new collision will reset the timer to ten seconds and apply the multiplier relative to the player base speed not current one.*/
  bool player_buff_debuff_collide(Player&, Buff_debuff&, sf::Time);
  /*! Checks if sprite position is equal to or less than 8 pixels from the bottom. Returns true if it is.*/
  bool destroyAtBottom(sf::Sprite);

  /*! Checks if the sprite position is equal to or less than 8 pixels from the top. Returns true if it is.*/
  bool destroyAtTop(sf::Sprite);
    /*! Function takes a two object references, the first to the bullet object and the second to the enemy object. The function checks if the bullet global bounds are intersecting the enemy global bounds and returns a bool true if they do or a bool false if they don't. */
  bool bullet_enemy_collide(Bullet&, Enemy&);
};
#endif
