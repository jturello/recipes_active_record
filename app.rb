require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @page_title = 'Recipe List'
  @recipes = Recipe.all()
  @sub_header_instructions = 'Click a link to view recipe details'
  erb(:index)
end

get('/recipes/new') do
    @page_title = 'Add Recipe Page'
    erb(:recipe_form)
end

post('/recipes/new') do
  @recipe_name = params[:recipe]
  Recipe.create({:name => @recipe_name})
  redirect('/')
end
