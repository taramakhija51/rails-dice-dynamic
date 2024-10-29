class ZebraController < ApplicationController

  def roll
    @num_dice = params.fetch(:number_of_dice).to_i
    @sides = params.fetch("how_many_sides").to_i
    @rolls = []
    @num_dice.times do
      die = rand(1..6)

      @rolls.push(die)
    end
    render({ :template => "layouts/flexible"})
  end

  def homepage
    render({ :template => "layouts/homepage"})
  end
end
