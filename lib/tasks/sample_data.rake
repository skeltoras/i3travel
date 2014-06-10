namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_customers
  end
end

def make_customers
  #Faker::Config.locale = DE
  80.times do |n|
    c_name = Faker::Company.name
    c_contact = Faker::Name.name
    c_street = Faker::Address.street_address
    c_plz = Faker::Address.postcode
    c_city = Faker::Address.city
    c_state = Faker::Address.country
    c_tel = Faker::PhoneNumber.cell_phone
    c_mail = Faker::Internet.email
    c_web = Faker::Internet.url   
    Customer.create!(
      customer_name: c_name,
      customer_contact: c_contact,
      customer_street: c_street,
      customer_plz: c_plz,
      customer_city: c_city,
      customer_state: c_state,
      customer_telephone: c_tel,
      customer_email: c_mail,
      customer_homepage: c_web
    )
  end
end