class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.string :name
      t.text :bio
      t.integer :follower_count
      t.string :angellist_url
      t.string :angellist_image_url
      t.string :location
      t.string :email_address
      t.string :phone_number
      t.string :job_title
      t.string :company_name
      t.string :company_url
      t.string :investment_status
      t.integer :company_id

      t.timestamps
    end
  end
end
