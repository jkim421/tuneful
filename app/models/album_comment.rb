# == Schema Information
#
# Table name: album_comments
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  album_id   :integer          not null
#  body       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class AlbumComment < ApplicationRecord

  validates :body, presence: true

  belongs_to :user
  belongs_to :album

end
