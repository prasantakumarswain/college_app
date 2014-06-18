class Section < ActiveRecord::Base
  belongs_to :college_information
  has_one :faculty
  belongs_to :stream
  belongs_to :director
  attr_accessible :name, :college_information_id, :stream_id, :director_id
end
