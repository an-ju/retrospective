require 'rails_helper'

RSpec.describe "action_items/new", type: :view do
  before(:each) do
    assign(:action_item, ActionItem.new(
      :name => "MyString",
      :content => "MyText",
      :state => 1,
      :comment => "MyText"
    ))
  end

  it "renders new action_item form" do
    render

    assert_select "form[action=?][method=?]", action_items_path, "post" do

      assert_select "input[name=?]", "action_item[name]"

      assert_select "textarea[name=?]", "action_item[content]"

      assert_select "input[name=?]", "action_item[state]"

      assert_select "textarea[name=?]", "action_item[comment]"
    end
  end
end
