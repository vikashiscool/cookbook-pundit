class RecipePolicy < ApplicationPolicy
  attr_reader :user, :recipe

  def initialize(user, recipe)  #basic structure for every policy 
    @user = user
    @recipe = recipe
  end

  def edit?
  	recipe.user == user
  end

  def update?
    edit?
  end

  def destroy?
  	edit?
  end
end