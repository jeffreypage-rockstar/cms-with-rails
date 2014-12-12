class SharedOffer < ActiveRecord::Base
  belongs_to :offer
  belongs_to :user_sent, :class => 'User'
  belongs_to :user_received, :class => 'User'
end
