require 'rails_helper'

RSpec.describe "url_mappings/show", type: :view do
  before(:each) do
    @url_mapping = assign(:url_mapping, UrlMapping.create!(
      :target_url => "Target Url",
      :short_path => "",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Target Url/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
