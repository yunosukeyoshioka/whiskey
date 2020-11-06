# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.create!(id: 1, genre: "モルト")
Genre.create!(id: 2, genre: "ブレンデッド")
Genre.create!(id: 3, genre: "グレーン")

District.create!(id: 1, district: "スコッチ")
District.create!(id: 2, district: "カナディアン")
District.create!(id: 3, district: "アイリッシュ")
District.create!(id: 4, district: "ジャパニーズ")
District.create!(id: 5, district: "バーボン(アメリカン)")
District.create!(id: 6, district: "その他の地域")

