require 'spec_helper'

describe SBA do

  before(:each) do
    State.create(state_abbr: "FL", state_name: "Florida")
  end

  describe "#requirements_for" do

    context "given a state is supplied" do

      it "creates state requirement objects for that state" do
        VCR.use_cassette('SBA.requirement_for state') do
          sba = SBA.new
          requirements = sba.requirements_for "FL"
          state_req    = StateRequirement.last
          state        = State.find state_req.state_id

          expect(state.state_abbr).to eq "FL"
        end
      end
    end
  end
end