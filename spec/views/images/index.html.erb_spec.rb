require 'rails_helper'

RSpec.describe "images/index", type: :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        :image => fixture_file_upload('spec/files/test-image.jpeg', 'image/jpeg')
      ),
      Image.create!(
        :image => fixture_file_upload('spec/files/test-image.jpeg', 'image/jpeg')
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "td>img", :count => 2
  end
end
