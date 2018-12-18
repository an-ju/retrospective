require 'rails_helper'

RSpec.describe "action_items/show", type: :view do
  before(:each) do
    @action_item = assign(:action_item, ActionItem.create!(
      :name => "Name",
      :content => "MyText",
      :state => 2,
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
