# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rolify'

old_admin = User.with_role(:admin).first
old_admin.destroy if old_admin.present?

u = User.new
u.email = 'test@example.com'
u.password = 'password'
u.add_role :admin
u.save!

User.create(email: 'simple_user@example.com', password: 'password')