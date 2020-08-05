Kitten.destroy_all
Owner.destroy_all

Owner.create(name: "Graeme", email: "gnorris@alumni.shawnigan.ca")
Owner.create(name: "Evan", email: "evannorris99@gmail.com")
Owner.create(name: "Bob", email: "bob@thegoodearth.ca")
Owner.create(name: "Stephany", email: "")
Owner.create(name: "Joe", email: "gmanthefan123@gmail.com")

@owners = Owner.all


@owners.order('RANDOM()').first.kittens << Kitten.create(name: "Clarence", age: "1", cuteness_scale: 8, softness_scale: 10)
@owners.order('RANDOM()').first.kittens << Kitten.create(name: "Bits", age: "1", cuteness_scale: 10, softness_scale: 5)
@owners.order('RANDOM()').first.kittens << Kitten.create(name: "bob II", age: rand(15).to_s, cuteness_scale: rand(10), softness_scale: rand(10))
@owners.order('RANDOM()').first.kittens << Kitten.create(name: "steve", age: rand(15).to_s, cuteness_scale: rand(10), softness_scale: rand(10))
@owners.order('RANDOM()').first.kittens << Kitten.create(name: "socks", age: rand(15).to_s, cuteness_scale: rand(10), softness_scale: rand(10))
@owners.order('RANDOM()').first.kittens << Kitten.create(name: "mits", age: rand(15).to_s, cuteness_scale: rand(10), softness_scale: rand(10))
@owners.order('RANDOM()').first.kittens << Kitten.create(name: "the destroyer", age: rand(15).to_s, cuteness_scale: rand(10), softness_scale: rand(10))



p "#{Kitten.count} kittens created"
p "#{Owner.count} owners created"
