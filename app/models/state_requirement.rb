class StateRequirement < ActiveRecord::Base
  attr_accessible :title,
                  :description,
                  :url,
                  :category,
                  :business_type,
                  :section,
                  :resource_group_description,
                  :state_abbr

  def self.create_requirement req
    create(
      title:                      req["link_title"],
      description:                req["description"],
      url:                        req["url"],
      category:                   req["category"],
      business_type:              req["business_type"],
      section:                    req["section"],
      resource_group_description: req["resource_group_description"],
      state_abbr:                 req["state"]
      )
  end
end