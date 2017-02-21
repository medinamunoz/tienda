# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Product.destroy_all

Category.create(name: "bebidas")
Category.create(name: "helados")
Category.create(name: "conservas")

Product.create(name: "fanta", cost:350, category_id: Category.find_by(name:"bebidas").id)

new_product = Category.find_by(name:"bebidas")
new_product.products.build(name:"pap_build", cost: 389).save

Product.create(name: "chocolito", cost:700, category_id: Category.find_by(name:"helados").id)
Product.create(name: "danky", cost:900, category_id: Category.find_by(name:"helados").id)

Product.create(name: "duraznos", cost:1300, category_id: Category.find_by(name:"conservas").id)
Product.create(name: "arvejas", cost:400, category_id: Category.find_by(name:"conservas").id)

Product.last.destroy

ult_registro = Product.last
ult_registro.premium = true
ult_registro.save

categorias = Category.all
categorias.each do |categoria|
	categoria.name = categoria.name.upcase
	categoria.save
	end

