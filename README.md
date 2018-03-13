-----BASIC CRUD-----

rails new {NAME}

rails g controller {NAME PL}
def index end

views/{CONTROLLER NAME} touch index.html.erb

/RouteS\
root '{CONTROLLER NAME}#index{VIEW}'

/RouteS\
resources :{CONTROLLER NAME}

/{CONTROLLER}\
def new end

views/{CONTROLLER NAME} touch new.html.erb (form)


/{CONTROLLER}\
def create
@post = Post.new(post_params)
@post.save
redirect_to @post
end
private def post_params params.require(:post).permit(:title, :body) end

rails g model {NAME NON-PL} -types-
rake db:migrate

/{CONTROLLER}\
def show @post = Post.find(params[:id]) end

-----USEFUL COMMANDS AND NOTES-----
rake routes - show all routes

<%= form_for :post(CONTROLLER NAME?), url: posts_path/(SUBMIT TO CREATE METHOD)\ do |f| %>
<p>
<%= f.label :title %><br>
<%= f.text_field %>
</p>
<p>
<%= f.label :body %><br>
<%= f.text_box %>
</p>
<p>
<%= f.submit %>
</p>
<% end %>

params[:post].inspect
