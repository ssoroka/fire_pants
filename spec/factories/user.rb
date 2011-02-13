Factory.define :user do |f|
  f.name 'John Doe'
  f.password 'Sup3rs3cure'
  f.password_confirmation {|u| u.password}
  f.sequence(:email) { |e| "john#{e}@doe.com" }
end