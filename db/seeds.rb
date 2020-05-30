# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'cleaning database'

Recette.destroy_all
User.destroy_all

puts 'database clean'

puts 'creating users'

toto = User.create(email: 'toto@mail.com', pseudo: 'toto', password: 'testtest')
toto.save!

jeanne = User.create(email: 'jeanne@mail.com', pseudo: 'Jeanne', password: 'testtest')
jeanne.save!

pauline = User.create(email: 'pauline@mail.com', pseudo: 'Popo', password: 'testtest')
pauline.save!

emma = User.create(email: 'emma@mail.com', pseudo: 'Emma', password: 'testtest')
emma.save!

gwen = User.create(email: 'gwen@mail.com', pseudo: 'Gwenouille', password: 'testtest')
gwen.save!

claire = User.create(email: 'claire@mail.com', pseudo: 'Claire', password: 'testtest')
claire.save!

puts 'creating recettes'

tiramisu = Recette.new(user: gwen, nom: 'Tiramisu', type_recette: 'Dessert', nb_parts: '8', temps_total: '40', ingredients: '250g mascarpone, 100g sucre, 1 oeuf, 20cl café, 20 biscuits cuillères', preparation: 'Fouettez vivement 3 jaunes d\'œufs avec le sucre glace jusqu\'à ce que le mélange blanchisse et devienne mousseux. Ajoutez ensuite le mascarpone puis mélangez jusqu\'à ce que le résultat soit bien homogène./Montez 3 blancs en neige ferme en y ajoutant une pincée de sel, puis mélangez-les à la crème au mascarpone. Attention, pour garder un mélange bien mousseux et léger, les blancs ne doivent pas être "cassés". Mélangez délicatement de haut en bas avec une spatule en silicone en tournant votre récipient d\'un quart de tour à chaque fois./Préparez une grande tasse de café fort, de préférence un expresso. Ajoutez-y l\'Amaretto, un alcool italien à l\'amande qui parfumera incroyablement votre dessert, puis mélangez./Coupez le bout des biscuits afin qu\'ils adhèrent parfaitement à la paroi de votre plat. Utilisez les bouts pour compléter les trous au centre de votre tiramisu. Étalez une couche de crème au mascarpone au fond du plat, puis placez une couche de biscuits légèrement imbibés de café à l\'Amaretto.')
file = URI.open('https://img-3.journaldesfemmes.fr/39De9S_EXpR6UBmKXmy4qUQKrzk=/750x/smart/d306e20680124dd5a6caef6045182436/recipe-jdf/10021897.jpg')
tiramisu.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
tiramisu.save!

pizza = Recette.new(user: jeanne, nom: 'Tiramisu', type_recette: 'Plat', nb_parts: '4', temps_total: '20', ingredients: '250g mascarpone, 100g sucre, 1 oeuf, 20cl café, 20 biscuits cuillères', preparation: '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ea sapiente dignissimos quibusdam eos, consequuntur fugiat unde esse a perspiciatis? Quaerat incidunt, a deserunt reprehenderit soluta facere quasi suscipit porro?</div><div>Non harum incidunt itaque aliquam id, animi sunt facilis delectus quas repudiandae ad nesciunt consectetur, error cum ea. Vel vitae laudantium adipisci mollitia tempora totam quaerat ut, nisi id excepturi!</div><div>Quam laborum suscipit assumenda deserunt soluta culpa? Esse itaque, pariatur nulla, ea ducimus temporibus tempore excepturi aut optio atque ut velit repudiandae vel, voluptatem illum earum! Maiores impedit, alias expedita.</div><div>Consequatur, ipsa ipsum odio ratione. Mollitia neque officia culpa dolorum animi facere molestiae veritatis, explicabo recusandae itaque doloribus ex fuga debitis perferendis, eum cumque labore eaque incidunt? Provident, velit, excepturi.</div><div>Amet repellendus autem inventore, natus dolores commodi a perspiciatis, recusandae delectus laborum vitae dolorem deleniti sit asperiores suscipit. Deserunt, saepe at suscipit quibusdam dignissimos doloremque reiciendis! Nemo totam a recusandae!</div>')
file = URI.open('https://assets.afcdn.com/recipe/20200206/107152_w1024h768c1cx176cy267cxt0cyt0cxb353cyb535.png')
pizza.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pizza.save!

houmous_betterave = Recette.new(user: emma, nom: 'Houmous à la betterave', type_recette: 'Apéro', nb_parts: '10', temps_total: '20', ingredients: '250g mascarpone, 100g sucre, 1 oeuf, 20cl café, 20 biscuits cuillères', preparation: '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ea sapiente dignissimos quibusdam eos, consequuntur fugiat unde esse a perspiciatis? Quaerat incidunt, a deserunt reprehenderit soluta facere quasi suscipit porro?</div><div>Non harum incidunt itaque aliquam id, animi sunt facilis delectus quas repudiandae ad nesciunt consectetur, error cum ea. Vel vitae laudantium adipisci mollitia tempora totam quaerat ut, nisi id excepturi!</div><div>Quam laborum suscipit assumenda deserunt soluta culpa? Esse itaque, pariatur nulla, ea ducimus temporibus tempore excepturi aut optio atque ut velit repudiandae vel, voluptatem illum earum! Maiores impedit, alias expedita.</div><div>Consequatur, ipsa ipsum odio ratione. Mollitia neque officia culpa dolorum animi facere molestiae veritatis, explicabo recusandae itaque doloribus ex fuga debitis perferendis, eum cumque labore eaque incidunt? Provident, velit, excepturi.</div><div>Amet repellendus autem inventore, natus dolores commodi a perspiciatis, recusandae delectus laborum vitae dolorem deleniti sit asperiores suscipit. Deserunt, saepe at suscipit quibusdam dignissimos doloremque reiciendis! Nemo totam a recusandae!</div>')
file = URI.open('https://i-reg.unimedias.fr/sites/art-de-vivre/files/styles/recipe/public/hs13-hoummous-de-_betterave_za.jpg?auto=compress%2Cformat&crop=faces%2Cedges&cs=srgb&fit=crop&h=500&w=393')
houmous_betterave.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
houmous_betterave.save!

tomates_mozza = Recette.new(user: claire, nom: 'Salade tomates mozza', type_recette: 'Entrée', nb_parts: '2', temps_total: '20', ingredients: '250g mascarpone, 100g sucre, 1 oeuf, 20cl café, 20 biscuits cuillères', preparation: '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ea sapiente dignissimos quibusdam eos, consequuntur fugiat unde esse a perspiciatis? Quaerat incidunt, a deserunt reprehenderit soluta facere quasi suscipit porro?</div><div>Non harum incidunt itaque aliquam id, animi sunt facilis delectus quas repudiandae ad nesciunt consectetur, error cum ea. Vel vitae laudantium adipisci mollitia tempora totam quaerat ut, nisi id excepturi!</div><div>Quam laborum suscipit assumenda deserunt soluta culpa? Esse itaque, pariatur nulla, ea ducimus temporibus tempore excepturi aut optio atque ut velit repudiandae vel, voluptatem illum earum! Maiores impedit, alias expedita.</div><div>Consequatur, ipsa ipsum odio ratione. Mollitia neque officia culpa dolorum animi facere molestiae veritatis, explicabo recusandae itaque doloribus ex fuga debitis perferendis, eum cumque labore eaque incidunt? Provident, velit, excepturi.</div><div>Amet repellendus autem inventore, natus dolores commodi a perspiciatis, recusandae delectus laborum vitae dolorem deleniti sit asperiores suscipit. Deserunt, saepe at suscipit quibusdam dignissimos doloremque reiciendis! Nemo totam a recusandae!</div>')
file = URI.open('https://m.bettybossi.ch/static/rezepte/x/bb_mcco170508_0010a_x.jpg')
tomates_mozza.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
tomates_mozza.save!

gin_tonic = Recette.new(user: pauline, nom: 'Gin Tonic', type_recette: 'Cocktail', nb_parts: '6', temps_total: '20', ingredients: '250g mascarpone, 100g sucre, 1 oeuf, 20cl café, 20 biscuits cuillères', preparation: '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Odio ea sapiente dignissimos quibusdam eos, consequuntur fugiat unde esse a perspiciatis? Quaerat incidunt, a deserunt reprehenderit soluta facere quasi suscipit porro?</div><div>Non harum incidunt itaque aliquam id, animi sunt facilis delectus quas repudiandae ad nesciunt consectetur, error cum ea. Vel vitae laudantium adipisci mollitia tempora totam quaerat ut, nisi id excepturi!</div><div>Quam laborum suscipit assumenda deserunt soluta culpa? Esse itaque, pariatur nulla, ea ducimus temporibus tempore excepturi aut optio atque ut velit repudiandae vel, voluptatem illum earum! Maiores impedit, alias expedita.</div><div>Consequatur, ipsa ipsum odio ratione. Mollitia neque officia culpa dolorum animi facere molestiae veritatis, explicabo recusandae itaque doloribus ex fuga debitis perferendis, eum cumque labore eaque incidunt? Provident, velit, excepturi.</div><div>Amet repellendus autem inventore, natus dolores commodi a perspiciatis, recusandae delectus laborum vitae dolorem deleniti sit asperiores suscipit. Deserunt, saepe at suscipit quibusdam dignissimos doloremque reiciendis! Nemo totam a recusandae!</div>')
file = URI.open('https://www.thespruceeats.com/thmb/tnzkDExzpF8aXOXRu8w4E7x74s0=/891x668/smart/filters:no_upscale()/gin-tonic-5a8f334b8e1b6e0036a9631d.jpg')
gin_tonic.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
gin_tonic.save!

