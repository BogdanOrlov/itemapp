class Item < ActiveRecord::Base
  validates :name, presence: true
  has_attached_file :picture, styles: {mini: "100x100#"}
  validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
