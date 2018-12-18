require 'rails_helper'

RSpec.describe "action_items/edit", type: :view do
  before(:each) do
    @action_item = assign(:action_item, ActionItem.create!(
      :name => "MyString",
      :content => "MyText",
      :state => 1,
      :comment => "MyText"
    ))
  end

  it "renders the edit action_item form" do
    render

    assert_select "form[action=?][method=?]", action_item_path(@action_item), "post" do

      assert_select "input[name=?]", "action_item[name]"

      assert_select "textarea[name=?]", "action_item[content]"

      assert_select "input[name=?]", "action_item[state]"

      assert_select "textarea[name=?]", "action_item[comment]"
    end
  end
end
