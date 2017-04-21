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

Madlib.create(title: 'Snowstorm!', category: 'Weather', content: "Weather plays an important part in our (plural noun) everyday. What is weather you ask? According to (adjective) scientists, who are known as meterologists, weather is what the (noun) is like at any time of (noun), it's all weather. When vapors in (adjective) clouds condense, we have (noun) and snow. A lot of (noun) means a (adjective) snowstorm!", description: 'A change in weather')

Madlib.create(title: 'Ice Cube', category: 'rap', content:"Straight outta Compton crazy (noun) named Ice Cube| From the gang called (plural noun) with attitudes| When Im called off I got a sawed off| Squeeze the trigger and bodies are hauled off| You too boy if ya (verb) with me| Off yo (body part) that's how I'm goin out| For the punk (noun) that's showin out| (plural noun) start to mumble, they wanna rumble| Mix 'm and cook 'em in a pot like gumbo| Going off on a (noun) like that| with a (noun) that's pointed at yo (body part)" , description: 'make a rap')

Madlib.create(title: 'Snoop Dogg', category: 'rap', content: "Guess who back in the (adjective) house| With a fat (noun) for your (adjective) mouth| (plural noun) recognize, (plural noun) do too| Cuz when (plural noun) get skanless and pull a voodoo| What you gon do? You really don't know| So I'd advise you not to trust that (noun)| Silly of me to fall in love with a (noun)| Knowin' damn well, I'm too caught up with my grip.", description: 'make a rap')
