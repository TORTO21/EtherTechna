class Story < ApplicationRecord
  validates :title, :body, :author_id, presence: true
  validates :title, uniqueness: true

  belongs_to :author,
    foreign_key: :author_id,
    class_name: :User

  has_one_attached :image

  def self.to_date(story)
    time_obj = story.created_at
    year = time_obj.year < Time.now.year ? ", #{time_obj.year}" : ""
    time_obj.strftime("%b %d") +year
  end

  def self.read_time(story)
    body_length = story.body.length
    read_time = (body_length / 2400) < 1 ? 1 : (body_length / 2400).ceil
    read_time.to_s + " min read"
  end
end