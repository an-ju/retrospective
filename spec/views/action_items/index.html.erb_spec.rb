require 'rails_helper'

RSpec.describe "action_items/index", type: :view do
  before(:each) do
    assign(:action_items, [
      ActionItem.create!(
        :name => "Name",
        :content => "MyText",
        :state => 2,
        :comment => "MyText"
      ),
      ActionItem.create!(
        :name => "Name",
        :content => "MyText",
        :state => 2,
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of action_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
