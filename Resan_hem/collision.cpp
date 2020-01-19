#include "collision.h"
#include <iostream>
bool Collision::player_enemy_collide(Player& player, Enemy& enemy){
  if(player.getShape().getGlobalBounds().intersects(enemy.getShape().getGlobalBounds())){
    return true;
  }
  else{
    return false;
  }
}
bool Collision::player_buff_debuff_collide(Player& player, Buff_debuff& buff_debuff, sf::Time player_state_time){
  if(player.getShape().getGlobalBounds().intersects(buff_debuff.getShape().getGlobalBounds())){
    std::cout << "collision with buff/debuff" << '\n';
    std::cout << "Statetime->"<< player.stateTime.asSeconds()<< "---" << player_state_time.asSeconds()<< "<-Comp Time"  << '\n';
    player.stateIsChanged = true;
    player.multiplier = buff_debuff.getMultiplier();
    player.stateTime = player_state_time + sf::seconds(10);

    return true;
  }
  else{
    return false;
  }
}

bool Collision::bullet_enemy_collide(Bullet& bullet, Enemy& enemy){
  if(bullet.getShape().getGlobalBounds().intersects(enemy.getShape().getGlobalBounds())){
    return true;
  }
  else{
    return false;
  }
}

bool Collision::destroyAtBottom(sf::Sprite shape){
  if(shape.getPosition().y >= 670 - shape.getScale().y){
    return true;
  }
  else{
    return false;
  }
}
bool Collision::destroyAtTop(sf::Sprite shape){
  if(shape.getPosition().y <= 8){
    return true;
  }
  else{
    return false;
  }
}
