require 'rails_helper'

RSpec.describe "facts/new", type: :view do
  before(:each) do
    assign(:fact, Fact.new(
      :title => "MyString",
      :body => "MyText",
      :source => "MyText"
    ))
  end

  it "renders new fact form" do
    render

    assert_select "form[action=?][method=?]", facts_path, "post" do

      assert_select "input[name=?]", "fact[title]"

      assert_select "textarea[name=?]", "fact[body]"

      assert_select "textarea[name=?]", "fact[source]"
    end
  end
end
