#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

BizStartr::Application.load_tasks


namespace :load do

  desc "Creates state objects in the db"
  task :states => :environment do

    puts "Creating state objects in the db"
    puts "the robots are hard at work..."

    states = [
      "Alabama", "AL", "Alaska", "AK", "Arizona", "AZ", "Arkansas", "AR", "California", "CA", "Colorado", "CO", "Connecticut", "CT", "Delaware", "DE", "District of Columbia", "DC", "Florida", "FL", "Georgia", "GA", "Hawaii", "HI", "Idaho", "ID", "Illinois", "IL", "Indiana", "IN", "Iowa", "IA", "Kansas", "KS", "Kentucky", "KY", "Louisiana", "LA", "Maine", "ME", "Maryland", "MD", "Massachusetts", "MA", "Michigan", "MI", "Minnesota", "MN", "Mississippi", "MS", "Missouri", "MO", "Montana", "MT", "Nebraska", "NE", "Nevada", "NV", "New Hampshire", "NH", "New Jersey", "NJ", "New Mexico", "NM", "New York", "NY", "North Carolina", "NC", "North Dakota", "ND", "Ohio", "OH", "Oklahoma", "OK", "Oregon", "OR", "Pennsylvania", "PA", "Puerto Rico", "PR", "Rhode Island", "RI", "South Carolina", "SC", "South Dakota", "SD", "Tennessee", "TN", "Texas", "TX", "Utah", "UT", "Vermont", "VT", "Virginia", "VA", "Washington", "WA", "West Virginia", "WV", "Wisconsin", "WI", "Wyoming", "WY"
    ]
    states.each_slice(2) do |state_name, state_abbr|
      State.create(state_abbr: state_abbr, state_name: state_name)
    end

    puts "finished creating state objects in the db."
  end

  desc "Creates state requirement objects for each state"
  task :state_requirements => [:states, :environment] do

    puts "Creating state requirements in the db"
    puts "the robots are hard at work..."

    State.all.each do |state|
      SBA.new.requirements_for state.state_abbr
    end

    puts "finished creating requirements in the db."
  end

  desc "Creates the SBA state requirement objects in the db"
  task :sba_requirements => [:states, :state_requirements]

end