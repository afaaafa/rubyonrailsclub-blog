# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create default admin:users
admins = %w(admin@admin.com test@test.com)
admins.each do | email |
  next if Admin.find_by(email: email)
  Admin.create!(
    email: email,
    password: ENV["DEFAULT_ADMIN_PASSWORD"],
    password_confirmation: ENV["DEFAULT_ADMIN_PASSWORD"],
  )
end
