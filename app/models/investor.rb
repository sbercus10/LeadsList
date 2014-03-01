class Investor < ActiveRecord::Base
  attr_accessible :angellist_image_url, :angellist_url, :bio, :company_name, :company_url, :email_address, :follower_count, :investment_status, :job_title, :location, :name, :phone_number

  has_and_belongs_to_many :companies
end
