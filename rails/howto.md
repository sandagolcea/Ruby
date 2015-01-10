Rails
=======

Create a new rails application
--------
`$ rails new my_app`

Create a new controller
--------

* to generate a controller named welcome, that has a method called index
`$ rails generate controller welcome index`

* You also need to go to:
`routes.rb`
& set this as root page
`root 'welcome#index'`
(to create a simple route, do `get 'welcome/index'` )

* then go to 
`app/views/welcome/index.html.erb.`
& add some html text (<h1>Hi there!</h1>)

Create a new resource
--------
* in `routes.rb` add :
`resources :articles`

* add file: views/items/new