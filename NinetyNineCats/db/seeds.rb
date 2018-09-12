# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = []

cats << Cat.create(birth_date: '2016/07/09', name: 'Apple', color: 'orange', sex: 'M', description: "I like apples")
cats << Cat.create(birth_date: '2004/05/26', name: 'Tiger', color: 'purple', sex: 'F', description: "Rawrrrr")
cats << Cat.create(birth_date: '1969/12/31', name: 'Cat-Three', color: 'purple', sex: 'X', description: "I invented SQL, the internet, and global warming :0!")

CatRentalRequest.create(cat_id: cats[0].id, start_date: '2018/09/06', end_date: '2018/09/16', status: 'PENDING')
CatRentalRequest.create(cat_id: cats[0].id, start_date: '2018/09/13', end_date: '2018/09/15', status: 'PENDING')
CatRentalRequest.create(cat_id: cats[0].id, start_date: '2018/09/06', end_date: '2018/09/10', status: 'APPROVED')
CatRentalRequest.create(cat_id: cats[0].id, start_date: '2018/09/16', end_date: '2018/09/23', status: 'PENDING')
CatRentalRequest.create(cat_id: cats[0].id, start_date: '2018/08/31', end_date: '2018/09/05', status: 'APPROVED')
CatRentalRequest.create(cat_id: cats[0].id, start_date: '2018/09/09', end_date: '2018/09/12', status: 'APPROVED')
