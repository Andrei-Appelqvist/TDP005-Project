#include "game_state.h"

Game::Game(sf::RenderWindow & win) : window{win}{}

int Game::run(){
  while(!quit){
    window.clear();
    sf::Event event;
      switch(event.type){
        case sf::Event::Closed:
          quit = true;
          break;
        default:
        break;
        }
    speedIncrease();
    input();
    update();
    render();
    window.display();
  }
  return score.get_score();
}


void Game::render(){
  field.display(window);
  score.drawScore(window);
  player.draw(window);
  for(auto buff = buff_vec.begin(); buff != buff_vec.end(); ++buff){
    (*buff)->draw(window);
  }

  for(auto bullet = bulletVec.begin(); bullet != bulletVec.end(); ++bullet){
      (*bullet)->draw(window);
  }
  for(auto enemy = enemies.begin(); enemy != enemies.end(); ++enemy){
    (*enemy)->draw(window);
  }
}

void Game::speedIncrease(){
  if(game_time.getElapsedTime().asSeconds() >= 30){
    game_speed += 2;
    field.loop_speed += 2;
    game_time.restart();
  }
}

void Game::input(){
  if(sf::Keyboard::isKeyPressed(sf::Keyboard::Q)){
    quit=true;
  }
  if(sf::Keyboard::isKeyPressed(sf::Keyboard::W)){
    player.carMove(0, -player.getPlayerSpeed() * player.multiplier);
  }
  if(sf::Keyboard::isKeyPressed(sf::Keyboard::A)){
    player.carMove(-player.getPlayerSpeed() * player.multiplier, 0);
  }
  if(sf::Keyboard::isKeyPressed(sf::Keyboard::S)){
    player.carMove(0, player.getPlayerSpeed() * player.multiplier);
  }
  if(sf::Keyboard::isKeyPressed(sf::Keyboard::D)){
    player.carMove(player.getPlayerSpeed() * player.multiplier, 0);
  }
  if(sf::Keyboard::isKeyPressed(sf::Keyboard::Space)){
    player.fire(bulletVec, game_time.getElapsedTime());
  }
}

void Game::update(){
  if(field.buff_spawn() == 3){
    buff_vec.push_back(new Turbo{field.x_spawn(), 8});
  }
  if(field.buff_spawn() == 4){
    buff_vec.push_back(new Bottle{field.x_spawn(), 8});
  }
  for(auto buff = buff_vec.begin(); buff != buff_vec.end(); ++buff){
    (*buff)->move(0, game_speed);
    if(colide.player_buff_debuff_collide(player, (**buff), game_time.getElapsedTime()) ||
       colide.destroyAtBottom((*buff)->getShape())){
      delete (*buff);
      buff_vec.erase(buff);
      --buff;
    }
  }
  if(field.enemy_spawn() == 2){
    enemies.push_back(new Enemy{field.x_spawn(), 8});
    }
  for(auto bullet = bulletVec.begin(); bullet != bulletVec.end(); ++bullet){
       (*bullet)->move(0, -player.getPlayerSpeed() * player.multiplier * 2);
       if(colide.destroyAtTop((*bullet)->getShape())){
         delete (*bullet);
         bulletVec.erase(bullet);
         --bullet;
       }
   }
  for(auto enemy = enemies.begin(); enemy != enemies.end(); ++enemy){
    int move_rng = field.enemy_move();
    (*enemy)->carMove(0, game_speed);
    if(move_rng == 5){
      (*enemy)->isMovingLeft = true;
    }
    if(move_rng == 6){
      (*enemy)->isMovingRight = true;
    }
    (*enemy)->changeLane();
    if(colide.player_enemy_collide(player, (**enemy))){
      quit=true;
      break;
    }
    if(colide.destroyAtBottom((*enemy)->getShape())){
      delete (*enemy);
      enemies.erase(enemy);
      --enemy;
      break;
    }
    for(auto bullet = bulletVec.begin(); bullet != bulletVec.end(); ++bullet){
      if(colide.bullet_enemy_collide((**bullet), (**enemy))){
        score.update_score(10);
        delete (*enemy);
        enemies.erase(enemy);
        --enemy;
        delete (*bullet);
        bulletVec.erase(bullet);
        --bullet;
        break;
      }
    }
  }
  score.check_time(game_time.getElapsedTime());
  player.stateChecker(game_time.getElapsedTime());
  player.fireChecker(game_time.getElapsedTime());
}

Game::~Game(){
  for(auto enemy = enemies.begin(); enemy != enemies.end(); ++enemy){
    delete (*enemy);
    enemies.erase(enemy);
    --enemy;
  }
  for(auto buff = buff_vec.begin(); buff != buff_vec.end(); ++buff){
    delete (*buff);
    buff_vec.erase(buff);
    --buff;
  }
  for(auto bullet = bulletVec.begin(); bullet != bulletVec.end(); ++bullet){
    delete (*bullet);
    bulletVec.erase(bullet);
    --bullet;
   }
}
