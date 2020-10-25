class User < ApplicationRecord
    has_secure_password
    validates :email, :presence => true, :uniqueness =>true
    # :terms_of_service, acceptance: { accept: 'yes' }
    has_many :Mylists
end
