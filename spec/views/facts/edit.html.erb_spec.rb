require 'rails_helper'

RSpec.describe "facts/edit", type: :view do
  before(:each) do
    @fact = assign(:fact, Fact.create!(
      :title => "MyString",
      :body => "MyText",
      :source => "MyText"
    ))
  end

  it "renders the edit fact form" do
    render

    assert_select "form[action=?][method=?]", fact_path(@fact), "post" do

      assert_select "input[name=?]", "fact[title]"

      assert_select "textarea[name=?]", "fact[body]"

      assert_select "textarea[name=?]", "fact[source]"
    end
  end
end
