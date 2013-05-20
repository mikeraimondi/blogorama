# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

author = Author.create(name: "Bob Loblaw", email: "bob_loblaw@lawblog.com")
post = author.posts.create(title: "Bob Loblaw's Law Blog guest post", body: "Lorem ipsum dolor")
comment = author.comments.create(body: "Lorem ipsum", post: post)

