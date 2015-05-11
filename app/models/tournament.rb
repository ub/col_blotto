class Tournament < ActiveRecord::Base
  has_many :entries, -> {order 'created_at, nick'}

  def result
    if open == false && entries.count > 1
      Tournament::Result.new entries
    else
      Tournament::NotReady.new
    end
  end
end
