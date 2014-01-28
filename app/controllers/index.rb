get '/' do
  erb :index
end

get '/jobs' do
  erb :jobs
end

get '/create' do
  erb :create
end

post '/create_post' do
  Post.create(title: params['title'], content: params['content'], category_id: params['category_id'], email: params['email'])
  erb :index
end
