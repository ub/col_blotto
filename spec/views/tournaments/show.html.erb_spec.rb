require 'rails_helper'

RSpec.describe "tournaments/show", type: :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :open => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end
