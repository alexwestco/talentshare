class List < ApplicationRecord
	has_attached_file :file
	validates_attachment :file, content_type: { content_type: ["application/pdf", "image/jpeg", "image/jpg", "image/png"] }
end
