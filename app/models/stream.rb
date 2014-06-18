class Stream < ActiveRecord::Base
  has_many :faculties
  belongs_to :college_information
  has_many :college_registrations
  has_many :sections


  attr_accessible :name, :college_information_id
end
