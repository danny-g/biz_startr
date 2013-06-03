require 'spec_helper'

describe MapsController do

  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template "index"
    end
  end

  describe "GET show" do
    it "assigns the requested state to @state" do
      state_reqs = StateRequirement.where state_abbr: "FL"
      get :show, id: "FL"
      expect(assigns(:state_reqs)).to  eq state_reqs
    end
  end
end
