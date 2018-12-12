require 'rails_helper'

RSpec.describe "wastes/edit", type: :view do
  before(:each) do
    @waste = assign(:waste, Waste.create!(
      :type => "",
      :content => "MyText",
      :rating => 1
    ))
  end

  it "renders the edit waste form" do
    render

    assert_select "form[action=?][method=?]", waste_path(@waste), "post" do

      assert_select "input[name=?]", "waste[type]"

      assert_select "textarea[name=?]", "waste[content]"

      assert_select "input[name=?]", "waste[rating]"
    end
  end
end
