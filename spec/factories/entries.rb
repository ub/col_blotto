FactoryGirl.define do
  factory :entry do
    tournament nil
    factory :entry1 do
      nick "minnie1"
      r1 1
      r2 1
      r3 1
      r4 1
      r5 1
      r6 1
    end

    factory :entry0 do
      nick "zinnie0"
      r1 0
      r2 0
      r3 0
      r4 0
      r5 0
      r6 0
    end


    factory :entry8 do
      nick "stevie8"
      r1 8
      r2 8
      r3 8
      r4 8
      r5 8
      r6 8
    end

    factory :e_2_10_11_16_20_41 do
      nick "mizzie"
      r1 2
      r2 10
      r3 11
      r4 16
      r5 20
      r6 41
    end

  end
end
