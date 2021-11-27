--DROP DATABASE IF EXISTS pokedex;
--CREATE DATABASE pokedex;
--USE pokedex;

CREATE TABLE pokemon (
    
	id int NOT NULL AUTO_INCREMENT,
	name_p varchar(50) NOT NULL,
    nickname_p varchar(50) NOT NULL,
    image_p varchar(500) NOT NULL,
	height_p float NOT NULL,
    weight_p float NOT NULL,
	category_p varchar(150) NOT NULL,
    abilities_p varchar(150) NOT NULL,
    type_p varchar(150) NOT NULL,
	PRIMARY KEY (id)
);

-- AÑADIR DATOS POKEMON
INSERT INTO pokemon( name_p, nickname_p,image_p, height_p, weight_p,category_p,abilities_p,type_p) 
VALUES ('Pikachu','Truenin', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png', 1.04 , 13.2 , 'Mouse', 'Estaatic' , 'Electric'),
('Ninetales ','Perrin', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/038.png', 3.07 , 43.9 , 'Fox', 'Flash Fire' , 'Fire'),
('Beedrill','Abejin', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/015.png', 3.03 , 65 , 'Poison Bee', 'Swarm' , 'Bug '),
('Zubat','Murcielagin', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/041.png', 2.07 , 16.5 , 'Bat', 'Inner Focus' , 'Poison'),
('Golbat','Murcielagon', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/042.png', 5.03 , 121-3 , 'Bat', 'Inner Focus' , 'Poison'),
('Gloom ','Vagin', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/044.png',2.07 , 19 , 'Weed', 'Chlorophyll' , 'Grass'),
('Oddish','CareCebolla', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/043.png', 1.08 , 119.9 , 'Weed', 'Chlorophyll' , 'Grass'),
('Arcanine ','PerroFuego', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/059.png', 1.04 , 13.2 , 'Legendary', 'Flash Fire' , 'Fire'),
('Rapidash ','Pegasu', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/078.png', 5.07 , 209.4 , 'Fire Horse', 'Run Away' , 'Fire'),
('Exeggcute ','Huebin', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/102.png', 1.04 , 5.5 , 'Mouse', 'Chlorophyll' , 'Psychic'),
('Marowak ','Jackie Chan', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/105.png', 3.02 , 99.2 , 'Bone Keeper', 'Rock Head' , 'Ground'),
('Hitmonlee','Bruce Lee', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/106.png', 4.11 , 109.8 , 'kicking', 'Limber' , 'Fighting'),
('Hitmonchan','Rocky', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/107.png', 4.07 , 110.7 , 'Punching', 'Keen Eye' , 'Fighting'),
('Articuno ','Chimuelo Blue', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/144.png', 5.07 , 122.1 , 'Freeze', 'Pressure' , 'Unknow');

/* 
--GET query:
    select name_p, nickname_p,image_p, height_p, weight_p,category_p,abilities_p,type_p
    from pokemon;
--POST query_
    /*
{
    "name_p": "Pikachu15",
    "nickname_p": "Truenin15",
    "image_p": "https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png",
    "height_p": 1.04,
    "weight_p": 13.2,
    "category_p": "Mouse",
    "abilities_p": "Estaatic",
    "type_p": "Electric"
}
*/
 