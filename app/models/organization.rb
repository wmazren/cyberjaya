class Organization < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :country, :fax, :name, :phone, :postcode, :state
end
