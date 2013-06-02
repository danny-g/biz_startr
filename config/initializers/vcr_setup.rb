require 'vcr'

if ENV["RAILS_ENV"] == 'test'
  VCR.configure do |c|
    c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
    c.hook_into :fakeweb
  end
end