#include "score.h"

Score::Score(){
  font.loadFromFile("font.ttf");
  text.setFont(font);
  text.setCharacterSize(28);
  text.setFillColor(sf::Color::Red);
  text.setPosition(25,20);
}

void Score::drawScore(sf::RenderWindow & window){
  text.setString(std::to_string(get_score()));
  window.draw(text);
}

int Score::get_score(){
  return score;
}

void Score::update_score(int add){
  score += add;
}

void Score::check_time(sf::Time game_time){
  if(game_time.asSeconds() > count){
    update_score(1);
    count += 1;
  }
  if(count >= 29 && game_time.asSeconds() < 1){
    count = 0;
  }
}
