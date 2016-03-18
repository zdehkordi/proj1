class PokemonController < ApplicationController
  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    @pokemon.save
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
    pokemon.save
    if pokemon.health <= 0
      pokemon.destroy
    end
    redirect_to trainer_path(pokemon.trainer)
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.level = 1
    @pokemon.health = 100
    @pokemon.trainer_id = current_trainer.id

    if @pokemon.save
      redirect_to trainer_path(current_trainer.id)
    else
      redirect_to new_path
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end

  def heal
    pokemon = Pokemon.find(params[:id])
    pokemon.health += 10
    pokemon.save
    redirect_to pokemon.trainer
  end

  def new
    @pokemon = Pokemon.new

  end

  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end