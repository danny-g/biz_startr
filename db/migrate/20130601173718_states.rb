class States < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_abbr
      t.string :state_name
    end
  end
end
