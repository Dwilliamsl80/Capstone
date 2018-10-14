class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	has_one :renter
  	has_one :tenant
  	has_one :reviewer
  	has_many :reviews
  	has_attached_file :user_picture, style: {:thumb => "150x150>" }
    validates_attachment_content_type :user_picture, content_type: /^image\/(png|gif|jpeg|jpg)/
  	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
