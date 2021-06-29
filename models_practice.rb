DOJO READS(PYTHON)
User model (RUBY EXAM!!!!!!)
name: string alias: string email:string password:digest
has_many :books
has_many :book_reviewed, through: :reviews, source: :book
has_many :reviews, dependent: :destroy

Book model 
title: string author: string rating: integer user:references review:references
has_many :users
has_many :users, through: :reviews
has_many :reviews, dependent: :destroy

Review model  
content: string user:references, book:references





FAVORITE BOOKS(PYTHON)
User Model 
first_name:string last_name:string email:string password:digest 
has_many :books
has_many :book_liked, through: :likes, source: :book 
has_many :likes, dependent: :destroy 

Book Model 
title:string description:string user:references
has_many :users
has_many :users, through: :likes
has_many :likes, dependent: :destroy


Favorite model 
belongs_to :user
belongs_to :book
user:references book:references 





PET SHELTER (CORY MEAN)

User Model
First Name:string 
Last Name:string 
email:string
password:digest
has_many :pets
has_many :likes, dependent: :destroy
has_many :pets_liked, through: :likes, source: :pet


Pet Model
name:string 
breed:string 
color:string 
skill:string
age: integer 
user:references
has_many :users
has_many :users, through: :likes
has_many :likes, dependent: :destroy

Like Model
user:references 
pet:references 