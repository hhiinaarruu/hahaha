FactoryBot.define do
  factory :post do
    caption 'Post caption'
    image { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'fixtures', 'image.png'), 'image/png') }
    user
  end
end