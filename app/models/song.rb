# == Schema Information
#
# Table name: songs
#
#  id         :bigint(8)        not null, primary key
#  album_id   :string           not null
#  title      :string           not null
#  track_num  :integer          not null
#  stream_url :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ApplicationRecord

  validates :title, :track_num, presence: true
  validates :track_num, uniqueness: { scope: :album }

  belongs_to :album
  has_one :artist,
    through: :album,
    source: :artist

  has_one_attached :audio_file

end
