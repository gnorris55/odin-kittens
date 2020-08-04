Kitten.destroy_all
Owner.destroy_all

@graeme = Owner.create(name: "Graeme")
@graeme.kittens << Kitten.create(name: "Clarence", age: "1", cuteness_scale: 8, softness_scale: 10)
@graeme.kittens << Kitten.create(name: "Bits", age: "1", cuteness_scale: 10, softness_scale: 5)

@graeme.save


p "#{Kitten.count} kittens created"
p "#{Owner.count} owners created"
