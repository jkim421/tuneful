# == Schema Information
#
# Table name: artists
#
#  id          :bigint(8)        not null, primary key
#  user_id     :integer          not null
#  name        :string           not null
#  bio         :string
#  picture_url :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location    :string


class Artist < ApplicationRecord

  belongs_to :user

  validates :name, presence: true

  has_many :albums
  has_many :songs

  has_one_attached :photo
  has_one_attached :cover_photo

  has_many :followers,
    class_name: :user_follows,
    foreign_key: :artist_id
  #
  # has_many :downloads,
  #   through: :albums,
  #   source: :user_downloads

end
