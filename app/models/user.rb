# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null


class User < ApplicationRecord
  attr_reader :password

  validates :username, :email, :password_digest, :session_token, presence: true
  validates :username, uniqueness: true
  validates :password, length: { minimum: 6 }, allow_nil: true

  after_initialize :ensure_session_token

  has_one_attached :photo
  has_one_attached :cover_photo

  has_one :artist

  # has_many :album_comments
  #
  has_many :user_follows
  has_many :album_comments

  has_many :followed_artists,
    through: :user_follows,
    source: :artist

  has_many :user_collection_albums
  has_many :collected_albums,
    through: :user_collection_albums,
    source: :album


  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    return nil unless user
    user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = User.generate_session_token
    save!
    return self.session_token
  end

  private

  def ensure_session_token
    self.session_token = User.generate_session_token unless self.session_token
  end

  def self.generate_session_token
    SecureRandom.urlsafe_base64
  end

end
