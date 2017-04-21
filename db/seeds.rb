# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Type.create(word_type: 'adjective')
Type.create(word_type: 'noun')
Type.create(word_type: 'name')
Type.create(word_type: 'verb')
Type.create(word_type: 'action verb')

Madlib.create(title: 'Vacations', category: 'Funny', content: 'A vacation is when you take a trip to some (adjective) place with your (adjective) family. Usually you go to some place that is near a/an (noun) or up on a/an (noun). A good vacation place is one where you can ride (plural noun) or play (game) or go hunting for (plural noun) . I like to spend my time (verb ending in ing) or (verb ending in ing). When parents go on a vacation, they spend their time eating three (plural noun) a day, and fathers play golf, and mothers sit around (verb ending in ing). Last summer, my little brother fell in a/an (noun) and got poison (plant) all over his (part of the body). My family is going to go to [the] (place), and I will practice (verb ending in ING). Parents need vacations more than kids because parents are always very (adjective) and because they have to work (number) hours every day all year making enough (plural noun) to pay for the vacation.', description: 'A vacation story')
