import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { PokemonsSService } from 'src/app/_services/pokemons-s.service';

@Component({
  selector: 'app-pokemon-edit',
  templateUrl: './pokemon-edit.page.html',
  styleUrls: ['./pokemon-edit.page.scss'],
})
export class PokemonEditPage implements OnInit {
  pokemon_id:any;
  pokemon:any;
  pokemonsForm:FormGroup
  constructor(
    private pokemonService:PokemonsSService,
    private activatedRoute:ActivatedRoute,//Xa sacar el ID
    private formBuilder:FormBuilder,//Inicializar formulario
    private router:Router //Una vez que termine lo devuelve al inicio
  ) { 
    this.pokemonsForm=this.formBuilder.group({
      id:[''],
      name_p:[''],
      nickname_p:[''],
      image_p:[''],
      height_p:[''],
      weight_p:[''],
      category_p:[''],
      abilities_p:[''],
      type_p:['']
    })
  }
  ngOnInit() {    
    this.activatedRoute.paramMap.subscribe(
      data=>{
        this.pokemon_id=data.get('id');
        this.pokemonService.getPokemonsById(this.pokemon_id).subscribe(
          response=>{
            console.log(response)
            this.pokemon=response;
            this.pokemonsForm.patchValue(response);
          },
          error=>{console.log(error);}
        )
      }
    );
  }

  updatePokemon(values:any){
    this.pokemonService.updatePokemon(this.pokemon_id,values).subscribe(
      response=>{
        console.log(response);
        this.router.navigate(['/pokemons']);
      },
      error=>{
        console.log(error);
        
      }
      )
  }
  
}
