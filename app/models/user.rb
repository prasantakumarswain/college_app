class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name,:email,:password,:password_confirmation

  after_create :send_invitation

  def send_invitation
    self.invite!
  end
  def password_required?
    self.new_record? ? false : true
  end
end
