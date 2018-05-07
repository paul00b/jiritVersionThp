require 'rails_helper'

RSpec.describe "facts/show", type: :view do
  before(:each) do
    @fact = assign(:fact, Fact.create!(
      :title => "Title",
      :body => "MyText",
      :source => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
