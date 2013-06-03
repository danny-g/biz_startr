class StateRequirements < ActiveRecord::Migration
  def change
    create_table :state_requirements do |t|
      t.string     :title
      t.text       :description
      t.string     :url
      t.string     :category
      t.string     :business_type
      t.string     :section
      t.text       :resource_group_description
      t.string     :state_abbr

      t.timestamps
    end
  end
end
