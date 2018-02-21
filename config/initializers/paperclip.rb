Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
Paperclip::Attachment.default_options[:path] = ":class/:attachment/:id_partition/:style/:filename"

if Rails.env.production?
	Paperclip::Attachment.default_options[:s3_host_name] = 's3.us-west-1.amazonaws.com'
else
	Paperclip::Attachment.default_options[:s3_host_name] = 's3.eu-west-3.amazonaws.com'
end
