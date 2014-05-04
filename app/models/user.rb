class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #user has many pins, user's pins get detroyd when they destroy their account
  has_many :pins, dependent: :destroy

  #user's name can't be blank
  validates :name, presence: true
  
end
