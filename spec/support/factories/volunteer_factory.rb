FactoryGirl.define do
  factory :volunteer do
    firstname     'Zach'
    lastname      'Holman'
    email_address 'zach@zachholman.com'
    phone_number  '+1404302200201'
    github        'holman'
    twitter       'zachholman'
    website       'http://zachholman.com'
    feedback      'Thank you for the opportunity to contribute to CodeCamp'
  end
end
