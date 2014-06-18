class Director < User
  belongs_to :college_information
  has_many :section
  attr_accessible :name, :email,:college_information_id
end
