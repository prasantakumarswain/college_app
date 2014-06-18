class Faculty < User
  belongs_to :college_information
  belongs_to :stream
  belongs_to :section
  attr_accessible :name, :email,:college_information_id,:stream_id
end
