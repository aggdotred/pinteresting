class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
 	validates :password, :presence => true,
           	:on => :create,
         	  :format => {:with => /\A.*(?=.{8,}).*\Z/ }

  has_many :videos
  has_many :category_id

  validates :fname, presence: true
end
