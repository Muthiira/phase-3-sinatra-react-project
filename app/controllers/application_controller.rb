class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/devs' do
    Dev.all.to_json
  end

  get '/dev/:id' do
    Dev.find(params[:id]).to_json
  end

  # get one dev and languages
  get '/dev/:id/languages' do
    Dev.find(params[:id]).to_json(include: :languages)
  end

  # crud operations for languages
  # create language
  post '/language' do
    language = Language.create(
        language: params[:language],
        experience: params[:experience],
        dev_id: params[:dev_id],
        project_id: params[:project_id]
    )
    language.to_json
end

# read all languages
get '/languages' do
  Language.all.to_json
end

# read all language with associated dev
get '/language/:id' do
  Language.find(params[:id]).to_json(include: :dev)
end

# update language
patch '/language/:id' do
  language = Language.find(params[:id])
  language.update(
        language: params[:language],
        experience: params[:experience],
        dev_id: params[:dev_id],
        project_id: params[:project_id]
  )
  {message: "Language updated!"}.to_json
end

# delete language
delete '/language/:id' do
language = Language.find(params[:id])
language.destroy
{message: "Language '#{languages.language}' has been deleted."}.to_json
end

# crud operations for project
# create project
post '/project' do
  project = Project.create(
    project_description: params[:project_description]
  )
project.to_json
end

# read all projects
get '/projects' do
  Project.all.to_json
end


# read all project with associated dev
get '/dev/:id/projects' do
  Dev.find(params[:id]).to_json(include: :projects)
end















end
