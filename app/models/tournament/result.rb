class Tournament::Result
  def initialize( entries )
    @entries = entries.to_ary
    @entries.each_with_index { |e,i | e.number = i + 1 }
    d = @entries.size
    @score_table = Array.new(d) { Array.new(d, 0) }
    @score_table.each_with_index do |row, i|
      (0...d).each do |j|
        next if i == j
        row[j] = battle_score(@entries[i], @entries[j])
      end
      @entries[i].score = row.reduce {|a,b| a + b}
    end
  end

  def to_partial_path
    'tournaments/result'
  end

  def score_table
    @score_table
  end

  def decorated_entries
    @entries
  end

  private

  def battle_score(current, other)
    fields = current.class.column_names.grep(/\Ar\d\Z/).map{|s| s.to_sym}
    #=> [:r1, :r2, :r3, :r4, :r5, :r6]
    fields.reduce(0) {|sum, field_name| sum + field_score(field_name, current, other)  }
  end

  def field_score(field_name, current, other)
    1.0 / 2 + (current.send(field_name).to_i <=> other.send(field_name).to_i) / 2.0
  end

end

