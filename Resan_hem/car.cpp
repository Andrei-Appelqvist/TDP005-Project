#include "car.h"

Car::Car(float pos_x, float pos_y){
  shape.setPosition(pos_x, pos_y);
}

bool Car::carCanMove(float new_x, float new_y){
  if(shape.getPosition().x + new_x > 966 || shape.getPosition().x + new_x < 8){
    return false;
  }
  if(shape.getPosition().y + new_y >= 730|| shape.getPosition().y + new_y < 8){
    return false;
  }
  else{
    return true;
  }
}

Enemy::Enemy(float pos_x, float pos_y) :Car{pos_x, pos_y}{
  texture.loadFromFile("Sprites/bil-enemy.png");
  shape.setTexture(texture);
  shape.setScale(0.3, 0.3);
}

void Enemy::carMove(float x, float y){
  if(carCanMove(x,y)){
    shape.move(x, y);
  }
}

void Enemy::changeLane(){
  if(iterationMove == 20){
    isMovingLeft = false;
    isMovingRight = false;
    iterationMove = 0;
  }
  if(isMovingLeft == true){
    ++iterationMove;
    carMove(-5, 0);
  }
  if(isMovingRight == true){
    ++iterationMove;
    carMove(5, 0);
  }
}

Player::Player(float pos_x, float pos_y) :Car{pos_x, pos_y}{
  texture.loadFromFile("Sprites/bil-player.png");
  shape.setTexture(texture);
  shape.setScale(0.3, 0.3);
}

void Player::carMove(float x, float y){
  if(carCanMove(x,y)){
    shape.move(x, y);
  }
}

void Player::fire(std::vector<Bullet*> & Bullets, const sf::Time game_time){
  if(canFire == true){
    Bullets.push_back(new Bullet{shape.getPosition().x, shape.getPosition().y});
    fireTime = game_time + sf::seconds(0.5 / multiplier);
    canFire = false;
  }
}

void Player::stateChecker(sf::Time comp_time){
  sf::Time minus = sf::seconds(30);
  if(stateIsChanged == true){
    if(stateTime > minus && comp_time.asSeconds() < 10){
      stateTime = stateTime - minus;
    }
    if(stateTime <= comp_time){
      stateIsChanged = false;
      multiplier = 1;
    }
  }
}

void Player::fireChecker(sf::Time comp_time){
sf::Time minus = sf::seconds(30);
if(canFire == false){
  if(fireTime > minus){
    fireTime = fireTime - minus;
  }
  if(fireTime <= comp_time){
    canFire = true;
  }
}
}
float Player::getPlayerSpeed(){
  return player_speed;
}
