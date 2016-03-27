class FowardContact < ActiveRecord::Base
  has_secure_token :token
  
  validates :to, presence: true
end
