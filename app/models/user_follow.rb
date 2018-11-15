# == Schema Information
#
# Table name: user_follows
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserFollow < ApplicationRecord

  belongs_to :user
  belongs_to :artist

end
