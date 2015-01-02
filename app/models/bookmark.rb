class Bookmark < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  validates :url, length: { maximum: 2000 }, presence: true
  validates :comment, length: { maximum: 2000 }
  validates :created_at, presence: true
  validates :updated_at, presence: true

  before_validation :set_dates

  def created_by?(user)
    return false unless user
    owner_id == user.id
  end

  def set_dates
    now = Time.zone.now
    self.created_at = now
    self.updated_at = now
  end
end
