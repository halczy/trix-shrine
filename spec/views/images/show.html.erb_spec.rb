require 'rails_helper'

RSpec.describe "images/show", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :image => fixture_file_upload('spec/files/test-image.jpeg', 'image/jpeg')
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/.jpeg/)
  end
end
