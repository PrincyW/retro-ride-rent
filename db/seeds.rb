# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Car.destroy_all
User.destroy_all

els = User.create!(email: "els@mail.com", password: "retrocar", username: "els", avatar_url: "https://media.licdn.com/dms/image/C4E03AQEy2jt6Y_nijg/profile-displayphoto-shrink_800_800/0/1664207573519?e=2147483647&v=beta&t=3aPxmR9iooUWQiSfF_eTtDBP4QR5sg5GG-KEq689NmA")
vicky = User.create!(email: "vasiliki@mail.com", password: "retrocar", username: "vasiliki", avatar_url: "https://media.licdn.com/dms/image/C5603AQFtIc1Ql1g1pQ/profile-displayphoto-shrink_200_200/0/1599645006945?e=2147483647&v=beta&t=dmqu_MWfP-jdTneJLrFXMxrBYWqB_oo04nBFYJ-rZR0")
princy = User.create!(email: "princy@mail.com", password: "retrocar", username: "princy", avatar_url: "https://media.licdn.com/dms/image/D4E03AQER3O8dl-DGIA/profile-displayphoto-shrink_800_800/0/1706011684644?e=2147483647&v=beta&t=192m5OmltKVvd_2_SHM0YynPn3bIIWe5-vxy7HcqVoY")



Car.create!(brand: "Mercedes ASL 300", description: "The Mercedes-Benz 300 SL (chassis code W 198) is a two-seat sports car that was produced by Mercedes-Benz from 1954 to 1957 as a gullwinged coupé and from 1957 to 1963 as a roadster.", photo_url: "https://images.unsplash.com/photo-1474015977340-64a93f54a9f5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", city: "Lille", price: 200, user: els )

Car.create!(brand: "Jaguar XK 120", description: "The Jaguar XK120 is a sports car manufactured by Jaguar between 1948 and 1954. It was Jaguar's first sports car since SS 100 production ended in 1939. ", photo_url: "https://auto.cdn-rivamedia.com/photos/annonce/big/jaguar-xk120-xk-120-roadster-135360105.jpg", city: "Lille", price: 250, user: vicky )

Car.create!(brand: "Jaguar XK 120", description: "The Fiat 500, commonly known as Topolino,[4] is an Italian city car produced and manufactured by Fiat from 1936 to 1955.", photo_url: "https://www.historics.co.uk/media/1591673/ref-75-1950-fiat-topolino-1.jpg?anchor=center&mode=crop&width=1000", city: "Lille", price: 250, user: princy )
