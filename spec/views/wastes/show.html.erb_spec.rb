require 'rails_helper'

RSpec.describe "wastes/show", type: :view do
  before(:each) do
    @waste = assign(:waste, Waste.create!(
      :waste_type => "Type",
      :content => "MyText",
      :rating => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
