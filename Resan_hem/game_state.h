#ifndef GAME_STATE
#define GAME_STATE
#include <SFML/Graphics.hpp>
#include "car.h"
#include <vector>
#include <random>
#include <iostream>
#include "collision.h"
#include "buff_debuff.h"
#include "bullet.h"
#include "object.h"
#include "game_field.h"
#include "score.h"

/**\Game Class
*Represents the Game and holds all needed game objects.*/
class Game{
public:
  /**Takes a RenderWindow parameter to wich it sets the window variable to.*/
  Game(sf::RenderWindow &);
  /**Runs the game loop.*/
  int run();
  /**Deletes all objects saved on the heap.*/
  ~Game();
private:
  /**Represents the window for which everything is drawn.*/
  sf::RenderWindow & window;
  /**Renders all objects to window.*/
  void render();
  /**Moves the Bullets, Enemies, Turbos, and Bottles, then checks all
  *collision.*/
  void update();
  /**Handles all input recieved from the user and moves the player, or fires a
  *Bullet depending on input.*/
  void input();
  /**Restarts the game_time clock variable every 30 seconds and increases the
  *game_speed variable.*/
  void speedIncrease();
  /**Represents the speed at which the Enemies, Turbos, and Bottles move.*/
  int game_speed{2};
  /**Collide object used for checking all collision.*/
  Collision colide{};
  /**Holds the game time.*/
  sf::Clock game_time;
  /**Game_Field object used for spawn probability and background loop.*/
  Game_Field field{};
  /**Vector of Enemy pointers used for the update and render functions.*/
  std::vector<Enemy*> enemies;
  /**Vector of Turbos and Bottles pointers used for the update and render
  *functions.*/
  std::vector<Buff_debuff*> buff_vec;
  /**Vector of Bullet pointers used for the update and render functions.*/
  std::vector<Bullet*> bulletVec;
  /**Player object spawned att 500 x pixels and 600 y pixels.*/
  Player player{500, 600};
  /**Represents if the Game function run loop should be running.*/
  bool quit = false;
  /**Score object used for tracking the users score.*/
  Score score;
};
#endif
