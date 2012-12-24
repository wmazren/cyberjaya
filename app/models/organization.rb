class Organization < ActiveRecord::Base
  has_many :users

  attr_accessible :address1, :address2, :city, :country, :fax, :name, :phone, :postcode, :state
end
