class PagesController < ApplicationController
  def welcome
    @jedis = Jedi.all
  end

  def about
  end
end
