class Story < ApplicationRecord
  validates :title, :body, :author_id, presence: true
  validates :title, uniqueness: true

  belongs_to :author,
    foreign_key: :author_id,
    class_name: :User

  has_one_attached :image

  def self.to_date(story)
    timeObj = story.created_at
    year = timeObj.year < Time.now.year ? ", #{timeObj.year}" : ""
    timeObj.strftime("%b %d") +year
  end
end