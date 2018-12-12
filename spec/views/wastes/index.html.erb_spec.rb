require 'rails_helper'

RSpec.describe "wastes/index", type: :view do
  before(:each) do
    assign(:wastes, [
      Waste.create!(
        :type => "Type",
        :content => "MyText",
        :rating => 2
      ),
      Waste.create!(
        :type => "Type",
        :content => "MyText",
        :rating => 2
      )
    ])
  end

  it "renders a list of wastes" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
