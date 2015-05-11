class Tournament < ActiveRecord::Base
  has_many :entries, -> {order 'created_at, nick'}
end
