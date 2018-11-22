# == Schema Information
#
# Table name: albums
#
#  id           :bigint(8)        not null, primary key
#  artist_id    :integer          not null
#  title        :string           not null
#  description  :string
#  cover_url    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  downloadable :boolean          default(TRUE)
#  genre_id     :integer          not null
#  featured     :boolean          default(FALSE)
#  release_date :integer
#

class Album < ApplicationRecord

  validates :title, :genre, presence: true

  belongs_to :genre
  belongs_to :artist
  has_many :songs

  has_one_attached :photo

  def self.of_genre(genre)
    return self.where(genre: genre)
  end

end
