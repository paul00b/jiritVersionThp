require 'rails_helper'

RSpec.describe "facts/index", type: :view do
  before(:each) do
    assign(:facts, [
      Fact.create!(
        :title => "Title",
        :body => "MyText",
        :source => "MyText"
      ),
      Fact.create!(
        :title => "Title",
        :body => "MyText",
        :source => "MyText"
      )
    ])
  end

  it "renders a list of facts" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
