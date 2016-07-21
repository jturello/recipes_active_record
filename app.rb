require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @page_title = 'Recipe List'
  @recipes = Recipe.all()
  @sub_header_instructions = 'Click a link to view the recipe'
  erb(:index)
end

get('/recipes/new') do
    @page_title = 'Add Recipe Page'
    erb(:recipe_form)
end
