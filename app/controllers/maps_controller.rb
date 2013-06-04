class MapsController < ApplicationController

  def index
    gon.state_abbrs ||= State.all.select {|s| s.state_abbr }

    @state_reqs = StateRequirement.where state_abbr: params[:id] if params[:id]
  end

  def show
    @state_reqs = StateRequirement.where state_abbr: params[:id]
  end
end
