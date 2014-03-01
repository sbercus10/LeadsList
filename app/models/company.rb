class Company < ActiveRecord::Base
  attr_accessible :financing_stage, :location, :market, :name

  belongs_to :user
  has_many :investors
end
