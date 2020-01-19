#include <SFML/Graphics.hpp>
#include "car.h"
#include <vector>
#include <random>
#include <iostream>
#include "collision.h"
#include "buff_debuff.h"
#include "bullet.h"
#include "game_field.h"
#include "object.h"
#include "score.h"
#include "game_state.h"
#include "menu_state.h"


int main(){
  sf::RenderWindow window{sf::VideoMode(1024, 768),"Resan Hem!"};
  window.setVerticalSyncEnabled(true);
  window.setFramerateLimit(60);
  Menu menu{window};
  bool quit = false;
  while(quit == false){
  if(menu.run() == 1){
    Game game{window};
    menu.score = game.run();
  }
  else{
    quit = true;
  }
}
return 0;
}
