### STEP ONE #######################################	

	### IN TERMINAL, ENTER: gem install sinatra ####

	#require sinatra
	require 'sinatra'
	require_relative 'models/helloworld.rb'

	#write your first get route
	get '/' do
		"Hello World"
		Greeting.get_greeting
	end

	### IN TERMINAL, ENTER: ruby name_of_file.rb ####


####################################################

### STEP TWO ######################################

	#write a second route that takes in parameters through the route
		# return that parameter in the view

		get '/greeting/:name' do
			@greeting = ["hey", "hi", "hola"]
			"#{@greeting.sample} #{params[:name]}" 
		end
####################################################

### STEP THREE ######################################