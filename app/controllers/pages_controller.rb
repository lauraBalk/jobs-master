# frozen_string_literal: true
class PagesController < ApplicationController
  def index
    @heros = Hero.all
  end
end
