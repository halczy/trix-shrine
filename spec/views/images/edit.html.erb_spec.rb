require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :image => fixture_file_upload('spec/files/test-image.jpeg', 'image/jpeg')
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do
      assert_select "input[name=?]", "image[image]"
    end
  end
end
