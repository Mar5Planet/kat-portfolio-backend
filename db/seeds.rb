# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



5.times do
    Content.create(img: "https://media.istockphoto.com/photos/abstract-handpainted-art-background-on-canvas-picture-id1134512518?k=6&m=1134512518&s=612x612&w=0&h=1vNz_YllCoCo7dkznt2aZYHOv8Z_aKFAFNofFfX9Xy8=", desc: "desc1", title: 'post1', category: 'art')
end

5.times do
    Content.create(img: "https://ybca.org/wp-content/uploads/2019/10/TheOceanAfterNature-75.jpg", desc: "desc1", title: 'post1', category: 'exhibit')
end


30.times do 
    Image.create(img: 'https://alextass.com/wp-content/uploads/2015/05/Hummingbird-colorful-bird-wings-logo-design-symbol-icon-by-Alex-Tass.jpg', content_id: Content.all.sample.id)
end 
