# == Schema Information
#
# Table name: user_collection_albums
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  album_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserCollectionAlbum < ApplicationRecord

  belongs_to :user
  belongs_to :album

end
