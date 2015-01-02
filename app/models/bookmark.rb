class Bookmark < ActiveRecord::Base
  validates :url, length: { maximum: 2000 }, presence: true
  validates :created_at, presence: true
  validates :updated_at, presence: true
end
