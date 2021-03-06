class Article < ApplicationRecord
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  #validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

    
    
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
    
  validates :text,
    presence: true
end