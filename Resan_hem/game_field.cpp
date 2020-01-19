#include "game_field.h"

Game_Field::Game_Field(){
  textures = load();
}

Game_Field::~Game_Field(){
  for(auto texture = textures.begin(); texture != textures.end(); ++texture){
    delete (*texture);
    textures.erase(texture);
    --texture;
  }
}

std::vector<sf::Texture*> Game_Field::load(){
  std::vector<sf::Texture*> texture_local;
  for(int x{1}; x < 72; ++x){
    texture_local.push_back(new sf::Texture);
    texture_local[x-1]->loadFromFile("Sprites/Background/" + std::to_string(x) + ".png");
  }
  return texture_local;
}

void Game_Field::display(sf::RenderWindow & window){
  if(current_index >= 70){
      current_index = 0;
    }
    window.draw(sf::Sprite(*textures[current_index]));
    current_index += loop_speed;
}

int Game_Field::enemy_spawn(){
  rng.seed(std::random_device()());
  std::uniform_int_distribution<std::mt19937::result_type> carspawn_prob(1,100);
  int number = carspawn_prob(rng);
  return number;
}

int Game_Field::buff_spawn(){
  rng.seed(std::random_device()());
  std::uniform_int_distribution<std::mt19937::result_type> buffspawn_prob(1,600);
  int number = buffspawn_prob(rng);
  return number;
}

float Game_Field::x_spawn(){
  rng.seed(std::random_device()());
  std::uniform_int_distribution<std::mt19937::result_type> spawn_x(8,950);
  float number = spawn_x(rng);
  return number;
}

int Game_Field::enemy_move(){
  rng.seed(std::random_device()());
  std::uniform_int_distribution<std::mt19937::result_type> move(1,100);
  int number = move(rng);
  return number;
}
