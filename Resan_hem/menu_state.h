#ifndef MENU_STATE
#define MENU_STATE
#include <SFML/Graphics.hpp>
#define MAX_NUMBER_OF_ITEMS 3
#include <iostream>

/*! The menu class is the class that handles showing the menu, the game over screen and that starts the game. */
class Menu{
public:
  /*! The constructor takes a reference to an sf::RenderWindow to get it's width and height. It proceeds to create three elements that are storred in the private variable menu. The first is a text that shows the score(that is not being shown before the game runs), the second is a play button and the third is an exit button. With the width and height of the window the elements are being centered in the picture. */
  Menu(sf::RenderWindow &);
  ~Menu();
  /*! Public variable that contains a window object where everything is being drawn. */
  sf::RenderWindow & window;
  /*! The function that runs the menu loop that checks for buttons being pressed, sets the string score that needs to be displayed, draws and displays the menu. */
  int run();
  /*! Loops through the array that contains all the elements and draws two of them if it is run before the game or draws all three if it runs after the game has run. */
  void draw();
  /*! Subtracts from the selectedItemIndex variable and changes the menu text colors to give the illusion that the player moves up in the menu. */
  void moveUp();
  /*! Adds to the selectedItemIndex variable and changes the menu text colors to give the illusion that the player moves down in the menu. */
  void moveDown();
  /*! Setter function that sets the score variable. This is the variable that is later displayed as the score. */
  void setScore(int);
  /*! Returns selectedItemIndex to find out which button was being pressed. */
  int getPressedItem();
  /*! Int variable that contains the score that is being returned from the gamestate. It is 0 as standard. */
  int score{0};
private:
  /*! Private bool variable that represents if the menu is running or not. False is standard, it becomes true if it is running and gets set to false when the player wants to quit the game. */
  bool quit{false};
  /*! Private variable that holds the position of the chosen menu elements aka. which button is selected. */
  int selectedItemIndex{0};
  /*! Private variable that contains a font for sf::text.  */
  sf::Font font;
  /*! Private variable that contains the array in which the menu objects are being saved. The array contains sf::Text objects. MAX_NUMBER_OF_ITEMS is a predefined variable for the size of the array, can easily be swapped for a (3) instead. */
  sf::Text menu[MAX_NUMBER_OF_ITEMS];

};
#endif
