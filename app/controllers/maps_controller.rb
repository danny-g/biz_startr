class MapsController < ApplicationController

  def index
    # gon.reqs = StateRequirement.all
  end

  def show
    @state_reqs = StateRequirement.where state_abbr: params[:id]
  end
end
