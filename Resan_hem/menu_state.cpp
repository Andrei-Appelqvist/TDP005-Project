 #include "menu_state.h"


Menu::Menu(sf::RenderWindow & window) :window{window}{
  float width = window.getSize().x;
  float height = window.getSize().y;
  if(!font.loadFromFile("font.ttf")){
    std::cerr << "Shit!" << '\n';
  }
  menu[0].setFont(font);
  menu[0].setFillColor(sf::Color::White);
  menu[0].setString("Your score was: " + std::to_string(score));
  menu[0].setPosition(sf::Vector2f((width-menu[0].getLocalBounds().width)/2, height/ (MAX_NUMBER_OF_ITEMS+1) * 1));


  menu[1].setFont(font);
  menu[1].setFillColor(sf::Color::Red);
  menu[1].setString("Play");
  menu[1].setPosition(sf::Vector2f((width-menu[1].getLocalBounds().width)/2, height/ (MAX_NUMBER_OF_ITEMS+1) * 2));

  menu[2].setFont(font);
  menu[2].setFillColor(sf::Color::White);
  menu[2].setString("Exit");
  menu[2].setPosition(sf::Vector2f((width-menu[2].getLocalBounds().width)/2, height/ (MAX_NUMBER_OF_ITEMS+1) * 3));

  selectedItemIndex = 1;
}

Menu::~Menu(){

}

int Menu::run(){
  menu[0].setString("Your score was: " + std::to_string(score));
  window.setKeyRepeatEnabled(false);
  while(quit == false){
    window.clear();
    if(sf::Keyboard::isKeyPressed(sf::Keyboard::W)){
      moveUp();
    }
    if(sf::Keyboard::isKeyPressed(sf::Keyboard::S)){
      moveDown();
    }
    if(sf::Keyboard::isKeyPressed(sf::Keyboard::Return)){
      return getPressedItem();
    }
  draw();
  window.display();
}
}

void Menu::draw(){
  for (int i{0}; i < MAX_NUMBER_OF_ITEMS; i++){
    if(i == 0 && score != 0){
      window.draw(menu[i]);
    }
    else if(i != 0){
      window.draw(menu[i]);
    }
  }
}

void Menu::moveUp(){
  if(selectedItemIndex == 2){
    menu[selectedItemIndex].setFillColor(sf::Color::White);
    --selectedItemIndex;
    menu[selectedItemIndex].setFillColor(sf::Color::Red);
  }
}
void Menu::setScore(int the_score){
  score = the_score;
}

void Menu::moveDown(){
  if(selectedItemIndex == 1){
    menu[selectedItemIndex].setFillColor(sf::Color::White);
    ++selectedItemIndex;
    menu[selectedItemIndex].setFillColor(sf::Color::Red);
  }
}

int Menu::getPressedItem(){
  return selectedItemIndex;
}
