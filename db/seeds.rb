CartedProduct.create!([
  {user_id: 2, quantity: 3, status: "carted", order_id: nil, product_id: 1},
  {user_id: 2, quantity: 1, status: "carted", order_id: nil, product_id: 4},
  {user_id: 2, quantity: 3, status: "carted", order_id: nil, product_id: 7}
])
Category.create!([
  {name: "Belgian"},
  {name: "German"},
  {name: "British"},
  {name: "Funky"},
  {name: "Sour"},
  {name: "Lager"}
])
Image.create!([
  {url: "http://www.thepourreport.com/wp-content/uploads/2015/12/saison-842x1024.jpg", product_id: 1},
  {url: "https://static.vinepair.com/wp-content/uploads/2015/08/biere-de-garde-social.jpg", product_id: 2},
  {url: "https://i.pinimg.com/originals/8c/3f/13/8c3f139dcc5c73e2f99cf4c22ab770b4.png", product_id: 3},
  {url: "http://blog.eckraus.com/wp-content/uploads/2016/03/Belgian-Witbier.png", product_id: 4},
  {url: "https://www.mrbeer.com/media/catalog/product/cache/a237138a07ed0dd2cc8a6fa440635ea6/b/e/beer-pale-pilsner-tallulw.jpg", product_id: 5},
  {url: "https://2fdltvvn8wp2rn64ywgk8o17-wpengine.netdna-ssl.com/wp-content/uploads/2017/11/baltic-porter-beer.jpg", product_id: 6},
  {url: "https://cdn.shopify.com/s/files/1/1268/5569/products/Raspberries_Coffee_1024x1024.png?v=1538724798", product_id: 7},
  {url: "https://brekeriet.files.wordpress.com/2017/04/img_9249.jpg?w=1400", product_id: 7},
  {url: "https://www.purebrewing.org/wp-content/uploads/2017/02/IMG_0056.jpg", product_id: 7},
  {url: "https://i.pinimg.com/originals/0e/9d/fc/0e9dfc0f3ae176cb3c1e7feb75cd34b8.jpg", product_id: 1}
])
Order.create!([
  {subtotal: nil, tax: nil, total: nil, user_id: 1},
  {subtotal: "39.98", tax: nil, total: nil, user_id: 1},
  {subtotal: "27.98", tax: nil, total: nil, user_id: 1},
  {subtotal: "27.98", tax: nil, total: nil, user_id: 1},
  {subtotal: "27.98", tax: "2.52", total: "30.5", user_id: 1},
  {subtotal: "27.98", tax: "2.52", total: "30.5", user_id: 1}
])
Product.create!([
  {name: "Bier de garde", price: "15.99", description: "French saison, traditionally lagered", in_stock: true, supplier_id: 3},
  {name: "Gueuze", price: "19.99", description: "A blend of new and old Lambics, typically a balanced sour", in_stock: true, supplier_id: 3},
  {name: "Witbier", price: "7.99", description: "Belgian white ale often brewed with corriander and orange peel.", in_stock: true, supplier_id: 1},
  {name: "Baltic Porter", price: "10.99", description: "very high alcohol, sweet, robust porter that originated in the Baltic states. Baltic Porter reflects both the character of original British Porters and the character of sweeter, highly alcoholic Russian Imperial Stouts.", in_stock: true, supplier_id: 1},
  {name: "Berliner Weisse", price: "4.99", description: "Low in alcohol, refreshingly tart, and often served with a flavored syrup like Woodruff or raspberry, the Berliner-style Weisse presents a harmony between yeast and lactic acid. These beers are very pale in color, and may be cloudy as they are often unfiltered.", in_stock: true, supplier_id: 2},
  {name: "Saison", price: "11.39", description: "Traditional farmhouse ale fermented with brett bruxellesis", in_stock: true, supplier_id: 2},
  {name: "Kölsch", price: "7.59", description: "Traditional ale of Cologne conditioned similar to a lager ", in_stock: true, supplier_id: 1}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 1, category_id: 4},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 3, category_id: 5},
  {product_id: 4, category_id: 1},
  {product_id: 5, category_id: 2},
  {product_id: 6, category_id: 3},
  {product_id: 6, category_id: 6},
  {product_id: 7, category_id: 2},
  {product_id: 7, category_id: 5}
])
Supplier.create!([
  {name: "Malt MadLads", email: "maltmaddness@beermail.com", phone_number: "234-4455"},
  {name: "Dank Hops", email: "dankhops@beermail.com", phone_number: "234-7775"},
  {name: "Yeastie boyz", email: "yeastieboyz@beermail.com", phone_number: "264-7675"}
])
User.create!([
  {name: "Bob", email: "bobmail@gmail.com", password_digest: "$2a$10$Q8HnTQeaMmEmYndlquhoiun0lXH3CMssoZCQSRaK9LevQhGpHc3ta", admin: false},
  {name: "Stan", email: "stantheman@gmail.com", password_digest: "$2a$10$OHnSbIhfb1YhKyVhyjU/ouCCBygjLt0.wguxNsFBqHp7LqmctA35G", admin: true}
])
