# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create([
	{ id: 1, name: 'admin' },
	{ id: 2, name: 'ferko' },
	{ id: 3, name: 'anicka' },
	{ id: 4, name: 'jozko' }
])

Article.delete_all
Article.create([
	{ id: 1, name: 'Lorem ipsum', creator_id: 1, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu justo arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean posuere bibendum quam, at aliquam nisi fringilla ultricies. Nulla facilisi. Quisque viverra vulputate ligula ac sollicitudin. Aliquam at libero non turpis porttitor tempor vitae id nulla. Praesent a velit lectus. Aliquam porttitor, neque sed mollis lobortis, risus quam vestibulum mi, ut vehicula felis est sit amet tortor. Morbi ligula lacus, consectetur tempus sollicitudin eu, rutrum id mi. Maecenas suscipit rutrum dapibus. Pellentesque sit amet iaculis neque. Nam malesuada blandit mi a pulvinar. Phasellus accumsan laoreet turpis, vel interdum lectus cursus at. Sed porttitor, justo sit amet aliquet mattis, massa lacus gravida mauris, eu sollicitudin odio turpis venenatis felis. Nullam aliquet, nulla eu sollicitudin aliquet, arcu eros eleifend nulla, vitae commodo purus nisl tincidunt magna. Nunc vehicula hendrerit euismod.' },
	{ id: 2, name: 'Nullam lectus odio', creator_id: 2, content: 'Nullam lectus odio, posuere id dapibus quis, gravida vel dolor. Aliquam euismod tincidunt nunc, at rutrum ipsum euismod eu. Donec vitae metus a ligula ornare vehicula id porttitor purus. Nulla facilisi. Morbi massa tellus, interdum vitae rutrum bibendum, posuere non augue. Mauris vel turpis lorem, ac tincidunt mi. Donec lectus justo, porttitor vitae aliquam sit amet, ornare vel dui. Mauris eu diam metus, a rutrum justo. Vivamus vitae tempor felis.' },
	{ id: 3, name: 'Pellentesque habitant', creator_id: 2, content: 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse adipiscing urna ac odio tempus et tempor nunc scelerisque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Morbi ac nisl a nisi ullamcorper commodo et ac quam. Etiam malesuada nunc ut ante mattis in volutpat orci tempus. Suspendisse a eros eget odio pulvinar sollicitudin. Donec ac gravida libero. Pellentesque blandit molestie congue. Ut quis tellus enim. Morbi at imperdiet nisl. Aliquam tristique ante a neque consequat sed ornare sem auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec a ipsum ac tortor lobortis aliquet. Sed suscipit mauris semper felis dictum varius. Maecenas accumsan eleifend metus, sit amet ornare erat ullamcorper ut.' }
])

Comment.delete_all
Comment.create([
	{ id: 1, commentable_type: 'Article', commentable_id: 1, creator_id: 2, content: 'Lorem ipsum.' },
	{ id: 2, commentable_type: 'Article', commentable_id: 1, creator_id: 3, content: 'LHi.' },
	{ id: 3, commentable_type: 'Article', commentable_id: 2, creator_id: 2, content: 'Nullam lectus odio.' },
	{ id: 4, commentable_type: 'Article', commentable_id: 2, creator_id: 2, content: 'Pellentesque habitant.' }
]) 