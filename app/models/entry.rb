class Entry < ActiveRecord::Base
  belongs_to :tournament
  attr_accessor :score, :number
end
