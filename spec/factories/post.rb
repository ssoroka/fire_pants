Factory.define :post do |p|
  p.sequence(:title) {|n| "My post ##{n}"}
  p.content "my post content"
  p.association(:user)
  p.live true
  p.posted_at { Time.now.utc }
end