require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :content => "MyText"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "[name=?]", "post[content]"
    end
  end

  it 'renders trix editor with proper class' do
    render
    expect(rendered).to have_selector('trix-editor')
    expect(rendered).to have_selector('trix-editor.trix-content')
  end
end
