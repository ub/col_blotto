require 'rails_helper'

RSpec.describe "tournaments/index", type: :view do
  before(:each) do
    assign(:tournaments, [
      Tournament.create!(
        :open => false
      ),
      Tournament.create!(
        :open => false
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
