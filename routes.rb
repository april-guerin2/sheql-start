get '/' do
  
  @flavors=Flavor.all
  @mixes=Mix.all
  @toppins=Toppin.all
  @specials=Special.all
  
  erb :"home"

end

get '/specials' do
  
  erb :"specials/index"
end

get '/originalorders' do
  
  @flavors=Flavor.all
  @mixes=Mix.all
  @toppins=Toppin.all

  
  erb :"originalorders/index"
end