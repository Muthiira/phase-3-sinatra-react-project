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

#   get '/dev/:id/languages' do
#     Dev.find(params[:id]).to_json(include: :languages)
#   end

#   post '/language' do
#     language = Language.create(
#         language: params[:language],
#         experience: params[:experience],
#         dev_id: params[:dev_id],
#         project_id: params[:project_id]
#     )
#     language.to_json
# end


# get '/languages' do
#   Language.all.to_json(include: :dev)
# end


# get '/language/:id' do
#   Language.find(params[:id]).to_json(include: :dev)
# end


end
