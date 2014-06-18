class CollegeInformation < ActiveRecord::Base
  has_many :faculties
  has_one :director
  has_many :college_registrations
  has_many :streams
  has_many :sections


  attr_accessible :name,:address

end
