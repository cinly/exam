class Product < ApplicationRecord
  belongs_to :category
  has_many :photos
  has_many :quizzes 
  accepts_nested_attributes_for :photos

  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :size, presence: true

  scope :recent, -> { order("created_at DESC") }
  has_many :reviews, dependent: :destroy
  has_many :favorites
  has_many :fans, :through => :favorites, :source => :user

  ratyrate_rateable "impress"

  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


end
