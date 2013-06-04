class MapsController < ApplicationController

  def index
    gon.state_abbrs ||= State.all.select {|s| s.state_abbr }
  end

  def show
    @state_reqs = StateRequirement.where state_abbr: params[:id]
    render text: @state_reqs.to_json
  end
end
