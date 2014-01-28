get '/' do
  erb :index
end

get '/jobs' do
  @posts = Post.where(category_id: 1).to_a
  erb :jobs
end

get '/create' do
  erb :create
end

post '/create_post' do
  # until Post.valid? == true
  p =  Post.create(title: params['title'], content: params['content'], category_id: params['category_id'], email: params['email'], admin: rand(1..10000))
  # end
  redirect "/show_admin/#{p.admin}"
end

get '/show/:id' do
  @post = Post.where(id: params[:id]).first
  erb :show
end

get '/show_admin/:admin_id' do
  @post = Post.where(admin: params[:admin_id]).first
  erb :show_admin
end

post '/update_post' do
  if Post.where(admin: params['admin']) != []
    redirect  "/show_admin/#{params['admin']}"
  else
    "Admin password does not exist."
  end
end
