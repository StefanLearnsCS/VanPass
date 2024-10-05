class Activity < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :image_url, presence: true, format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/, message: "must be a valid URL" }
end