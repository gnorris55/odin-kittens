Kitten.destroy_all
Owner.destroy_all

@graeme = Owner.create(name: "Graeme")
Kitten.create(name: "Clarence", age: "1", cuteness_scale: 8, softness_scale: 10, owner_id: @graeme.id)
Kitten.create(name: "Bits", age: "1", cuteness_scale: 10, softness_scale: 5, owner_id: @graeme.id)


p "#{Kitten.count} kittens created"
p "#{Owner.count} owners created"
