require 'rails_helper'

RSpec.describe "url_mappings/index", type: :view do
  before(:each) do
    assign(:url_mappings, [
      UrlMapping.create!(
        :target_url => "Target Url",
        :short_path => "",
        :user_id => 2
      ),
      UrlMapping.create!(
        :target_url => "Target Url",
        :short_path => "",
        :user_id => 2
      )
    ])
  end

  it "renders a list of url_mappings" do
    render
    assert_select "tr>td", :text => "Target Url".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
