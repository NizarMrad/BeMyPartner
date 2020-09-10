class User < ApplicationRecord
  before_create :build_profile
  after_create :welcome_send
  

  has_many :projects
  has_one :profile, dependent: :destroy
  accepts_nested_attributes_for :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :profile



  

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end



end
