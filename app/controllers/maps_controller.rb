class MapsController < ApplicationController

  def index
    gon.reqs = StateRequirement.all
  end
end
