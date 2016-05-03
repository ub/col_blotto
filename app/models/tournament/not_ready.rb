class Tournament::NotReady < Tournament::Result
  def initialize ; end
  def to_partial_path
    'tournaments/result_not_ready'
  end
end