class Company < ApplicationRecord
	has_attached_file :image
	validates_attachment :image, content_type: { content_type: ["application/pdf", "image/jpeg", "image/jpg", "image/png"] }
end
