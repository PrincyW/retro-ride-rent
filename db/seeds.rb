# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(email: "els@mail.com", password: "retrocar", username: "els", avatar_url: "https://media.licdn.com/dms/image/C4E03AQEy2jt6Y_nijg/profile-displayphoto-shrink_800_800/0/1664207573519?e=2147483647&v=beta&t=3aPxmR9iooUWQiSfF_eTtDBP4QR5sg5GG-KEq689NmA")
User.create!(email: "vasiliki@mail.com", password: "retrocar", username: "vasiliki", avatar_url: "https://media.licdn.com/dms/image/C5603AQFtIc1Ql1g1pQ/profile-displayphoto-shrink_200_200/0/1599645006945?e=2147483647&v=beta&t=dmqu_MWfP-jdTneJLrFXMxrBYWqB_oo04nBFYJ-rZR0")
User.create!(email: "princy@mail.com", password: "retrocar", username: "princy", avatar_url: "https://media.licdn.com/dms/image/D4E03AQER3O8dl-DGIA/profile-displayphoto-shrink_800_800/0/1706011684644?e=2147483647&v=beta&t=192m5OmltKVvd_2_SHM0YynPn3bIIWe5-vxy7HcqVoY")
