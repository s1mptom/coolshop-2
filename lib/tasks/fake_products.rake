namespace :db do
  desc "Fill database with sample data"
    task populate: :environment do
      Rake::Task['db:reset'].invoke
      Product.create!(name: "Big Yellow Car",
                      description: "aweosome car",
                      price: "999",
                      category_id: "1")
      7.times do |n|
        name  = Faker::Name.name
        description = "aweosome car-#{n+1}"
        price  = "999"
        category = "1"
        Product.create!(name: name,
                        description: description,
                        price: price,
                        category_id: category)
      end

      7.times do |n|
        name  = Faker::Name.name
        description = "aweosome car-#{n+1}"
        price  = "888"
        category = "2"
        Product.create!(name: name,
                        description: description,
                        price: price,
                        category_id: category)
      end

      7.times do |n|
        name  = Faker::Name.name
        description = "aweosome car-#{n+1}"
        price  = "777"
        category = "3"
        Product.create!(name: name,
                        description: description,
                        price: price,
                        category_id: category)
      end

      Category.create!(name: "999")

      2.times do |n|
        name = "#{8-n}#{8-n}#{8-n}"
        Category.create!(name: name)
      end
    end
end