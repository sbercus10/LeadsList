class CreateCompaniesInvestorsTable < ActiveRecord::Migration
  def self.up
    create_table :companies_investors, id: false do |t|
      t.references :company
      t.references :investor
    end
    add_index :companies_investors, [:company_id, :investor_id]
    add_index :companies_investors, :investor_id
  end

  def self.down
    drop_table :companies_investors
  end
end
