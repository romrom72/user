class User < ApplicationRecord
  has_secure_password
  has_secure_token :confirmation_token
  has_secure_token :recover_password

  validates :username,
            format: {with: /\A[a-zA-Z0-9_]{2,20}\z/, message: 'Ne doit contenir que des caractères alphanumérique ou des _'},
            uniqueness: {case_sensitive: false}

  validates :email,
            uniqueness: {case_sensitive: false}



  def to_session
    {id: id}
  end
end
