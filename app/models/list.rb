class List < ApplicationRecord
	has_attached_file :file
	validates_attachment :file, content_type: { content_type: [
		"application/pdf",
		"application/msword",
		"application/vnd.openxmlformats-officedocument.wordprocessingml.document",
		"application/vnd.ms-excel",
		"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"] }
end
