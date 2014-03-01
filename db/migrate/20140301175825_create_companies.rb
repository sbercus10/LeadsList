class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :market
      t.string :financing_stage

      t.timestamps
    end
  end
end
