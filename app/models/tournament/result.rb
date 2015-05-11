class Tournament::Result
  def initialize( entries )
    @entries = entries
  end

  def to_partial_path
    'tournaments/result'
  end
end

