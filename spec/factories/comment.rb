FactoryBot.define do
  factory :comment do
    content 'My content'
    user
    post
  end
end