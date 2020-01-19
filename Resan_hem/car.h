#ifndef CAR_CLASS
#define CAR_CLASS
#include <SFML/Graphics.hpp>
#include "bullet.h"
#include "object.h"
#include <vector>

/**\Car Class
  *Inherits from the Object Class and acts as parent
  * for Player and Enemy Class.*/
class Car : public Object{
public:
  /**Constructor Takes 2 float parameters as car spawn position */
  Car(float, float);
  /**Default destructor*/
  virtual ~Car() = default;
  /**Virtual move funktion is specified in each class that inherits Car*/
  virtual void carMove(float, float) = 0;
protected:
  /**Bool fuktion that checks if the Car can move to the desired position.
  *Takes two float parameters deciding where the car is trying to move.*/
  bool carCanMove(float, float);
};


/**\Enemy Class
*Represents the enemies in the game.*/
class Enemy : public Car{
public:
  /**Loads the specified sprite for Enemy and saves it.*/
  Enemy(float, float);
  /**Specifik carMove funktion*/
  void carMove(float, float);
  /**Changes Enemy position on the x axle depending on the bool variables
  *isMovingLeft and isMovingRight.*/
  void changeLane();
  /**Shows if the Enemy should be moving left or not*/
  bool isMovingLeft{false};
  /**Shows if the Enemy should be moving right or not*/
  bool isMovingRight{false};
private:
  /**The number of which step in Enemy's moving animation*/
  int iterationMove{0};
};

/**\Player Class
*Represents the Player in the game.*/
class Player : public Car{
public:
  /**Loads the specified sprite for Player and saves it.*/
  Player(float, float);
  /**Specifik carMove funktion*/
  void carMove(float, float);
  /**Adds a new Bullet to the a bullet vector, and changes fireTime to the time
  *parameter.*/
  void fire(std::vector<Bullet*> & , const sf::Time);
  /**Checks if state should still be changed depending on the Time parameter.
    Changes the stateIsChanged bool to false if the state shouldn't be changed*/
  void stateChecker(sf::Time);
  /**Checks if player can fire and changes the canFire bool to true if
    *the player can fire.*/
  void fireChecker(sf::Time);
  /**Returns player_speed float.*/
  float getPlayerSpeed();
  /**Time when state should stop affecting player.*/
  sf::Time stateTime{};
  /**Players movement multiplier depending on Buff_debuff effect*/
  float multiplier{1};
  /**Represents if the players state is changed*/
  bool stateIsChanged{false};
private:
  /**Represents if the player can fire*/
  bool canFire{true};
  /**Represents the next time the player can fire*/
  sf::Time fireTime{};
  /**The players deafault move speed*/
  float player_speed{5};
};

#endif
