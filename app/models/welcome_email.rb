class WelcomeEmail < ActiveRecord::Base
  validates :email, presence: true, :uniqueness => true,
    :email => {:strict_mode => true}
end
