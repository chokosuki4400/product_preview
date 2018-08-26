# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

language, design, program = LargeCategory.create([{name: "language"}, {name: "design"}, {name: "program"}])
middlecategory = MiddleCategory.create([
	{large_category_id: "1", name: "英語"},
	{large_category_id: "2", name: "イラストレーター"},
	{large_category_id: "1", name: "フランス語"},
	{large_category_id: "1", name: "イタリア語"},
	{large_category_id: "2", name: "フォトショップ"},
	{large_category_id: "3", name: "HTML"}
])



