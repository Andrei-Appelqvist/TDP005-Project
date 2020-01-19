#ifndef SCORE_CLASS
#define SCORE_CLASS
#include <SFML/Graphics.hpp>
#include <string>
#include <iostream>

/*! This class is responsible for keeping and counting the score when the game is running. */
class Score{
public:
  /*! The constructor creates an sf::Text object with a the font variable, a set position and color. This is the ingame score counter. */
  Score();
  /*! Getter function that returns the private variable score. */
  int get_score();
  /*! Function that takes an int as a parameter and adds that int to the score.  */
  void update_score(int);
  /*! The bread and butter of this class. This funtion checks if a second has passed and updates the score by one everytime this happens. */
  void check_time(sf::Time);
  /*! This function draws the score on the screen. */
  void drawScore(sf::RenderWindow &);
  /*! Public variable that helps to check the time. Every second this variable is being increased by one. Everytime this happens the score is being updated. */
  float count{0};
private:
  /*! Private variable that contains an sf::Text object, the same tiny MF that is being shown on screen. */
  sf::Text text;
  /*! Private variable that contains a font for the previously explained variable. */
  sf::Font font;
  /*! Private variable that contains the score that is to be drawn on the screen. */
  int score{0};
};

#endif
