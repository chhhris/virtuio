class Client < ActiveRecord::Base
  attr_accessible :billing, :name, :paid, :user_id

  belongs_to :user
end
