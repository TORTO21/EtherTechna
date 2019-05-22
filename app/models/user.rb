class User < ApplicationRecord

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, length: { minimum: 8 }, allow_nil: true
  
  after_initialize :ensure_session_token
  
  attr_reader :password
  
  has_many :stories,
    foreign_key: :author_id,
    class_name: :Story

  # FGRIPE
  
  def self.find_by_credentials(username, email, password)
    @user = User.find_by(username: username, email: email)
    return nil unless @user
    @user.is_password?(password) ? @user : nil
  end
  
  def self.generate_session_token
    SecureRandom.urlsafe_base64(16)
  end
  
  def reset_session_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end
  
  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
  
  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
  
  private
  
  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end
end
