# == Schema Information
#
# Table name: artists
#
#  id          :bigint(8)        not null, primary key
#  user_id     :integer          not null
#  name        :string           not null
#  bio         :string
#  location    :string           not null
#  picture_url :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Artist < ApplicationRecord

  belongs_to :user

  # has_many :albums
  # has_many :songs
  #
  # has_many :followers,
  #   class_name: :user_follows,
  #   foreign_key: :artist_id
  #
  # has_many :downloads,
  #   through: :albums,
  #   source: :user_downloads

end
