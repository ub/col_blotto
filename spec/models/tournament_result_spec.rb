require 'rails_helper'

RSpec.describe Tournament::Result do

  describe '#initialize'

  let (:entry_names) {%i(entry1 entry0 entry8 e_2_10_11_16_20_41)}
  let (:entries) {entry_names.map {|nm| FactoryGirl.build(nm)}}

  subject {Tournament::Result.new(entries).score_table}

  describe '#score_table' do
    it {is_expected.to be}
    it 'just print' do
      puts
      puts subject.inspect
      expect(subject).to eq([
                                 [0,6,0,0],
                                 [0,0,0,0],
                                 [6,6,0,1],
                                 [6,6,5,0]
                             ])
    end
  end

end