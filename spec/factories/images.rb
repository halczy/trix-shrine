FactoryGirl.define do
  factory :image do
    image { File.open("spec/files/test-image.png") }
  end
end
