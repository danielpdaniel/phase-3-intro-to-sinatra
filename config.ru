require 'sinatra'

class App < Sinatra::Base

  set :default_content_type, 'application/json'

  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end

  get '/potato' do
   { html: "<p>Boil 'em, mash 'em, stick 'em in a stew</p>" }.to_json
  end

  get '/dice' do 
    dice_roll = rand(1..6)
    { roll: dice_roll }.to_json
  end

  get '/add/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

    sum = num1 + num2
    { result: sum }.to_json
  end

  # get '/posts' do
  #   '<h1>HOT DAMN THESE ARE SURE SOME POSTS!!!!</h1>
  #   <ul>
  #   <li>post 1</li>
  #   <li>post 2</li>
  #   <li>post 3</li>
  #   </ul>'
  # end
  
end

run App
