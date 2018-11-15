# == Schema Information
#
# Table name: genres
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ApplicationRecord

  validates :name, presence: true
  has_many :albums
  
end
