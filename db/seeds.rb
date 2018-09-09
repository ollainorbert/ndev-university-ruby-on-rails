# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Default users
User.create(email: 'k1@k.com', password: 'password1')
User.create(email: 'k2@k.com', password: 'password2')
User.create(email: 'k3@k.com', password: 'password3')

# Default admins
Admin.create(email: 'admin@admin.com', password: 'admin1')

# Default supplies