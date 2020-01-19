#ifndef GAME_FIELD_CLASS
#define GAME_FIELD_CLASS
#include <SFML/Graphics.hpp>
#include <vector>
#include <random>
#include <iostream>
#include <string>

/**\Game_Field Class
*Takes care of spawn probability, and the background loop.
*/
class Game_Field{
public:
  /**Starts the load function for the background*/
  Game_Field();
  /**Deletes all the textures for the background*/
  ~Game_Field();
  /**Loads all the background textures and saves pointers to them in a vector,
  *which it then returns.*/
  std::vector<sf::Texture*> load();
  /**Displays the current index of the background loop to the window parameter.*/
  void display(sf::RenderWindow &);
  /**Returns an int for deciding if a Enemy should spawn.*/
  int enemy_spawn();
  /**Returns an int for deciding if a Turbo or Bottle should spawn.*/
  int buff_spawn();
  /**Returns a float representing an Objects x spawn value.*/
  float x_spawn();
  /**Returns an int for deciding if a Enemy should move.*/
  int enemy_move();
  /**Represents the current loop speed for the display function.*/
  int loop_speed{3};
private:
  /**Random generator of 32-bit numbers.*/
  std::mt19937 rng{};
  /**Represents the current background index of the textures vector.*/
  size_t current_index{0};
  /**Holds all the pointers for the background texures. Copied from the load
  *function.*/
  std::vector<sf::Texture*> textures;
};
#endif
