class Director < User
  belongs_to :college_information

  attr_accessible :name, :email,:college_information_id
end
