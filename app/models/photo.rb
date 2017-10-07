class Photo < ApplicationRecord
	has_attached_file :image, styles: { medium: "600x600>", small: "300x300", thumb: "150x150>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
