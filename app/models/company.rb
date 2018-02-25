class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable
	has_attached_file :image
	validates_attachment :image, content_type: { content_type: ["application/pdf", "image/jpeg", "image/jpg", "image/png"] }
end
