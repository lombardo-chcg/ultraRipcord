class User < ActiveRecord::Base
  has_many :favings
  has_many :preferences
  has_many :preferred_tags, through: :preferences, source: :tag

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(password_from_user)
    @password_from_user = password_from_user
    @password = BCrypt::Password.create(password_from_user)
    self.hashed_password = @password
  end

  def validate_password
    if @password_from_user.length == 0
      self.errors.add(:password, "must be provided")
    end
  end

  def authenticate(password)
    @user = User.find_by(email: email)

    if @user == nil then return nil end

    if @user.password == password
      return @user
    else
      return nil
    end
  end

end
