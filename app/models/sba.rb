class SBA
  attr_reader :conn

  def initialize
    @conn = connect
  end

  def requirements_for state
    data = conn.get "license_permit/all_by_state/#{state}.json"
    objectify data
  end

  private

  def connect
    conn = Faraday.new(:url => 'http://api.sba.gov/') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
  end

  def objectify data
    reqs = JSON.parse data.body
    reqs["state_sites"].each do |req|
      StateRequirement.create_requirement req
    end
  end
end