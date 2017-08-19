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

post '/order' do
  puts "Eating Method is " + params[:eating_method]
  order=Order.new
  order.scoops=params[:scoops]
  order.eating_method=params[:eating_method]
  order.save
  
  icecream=IceCreamFlavor.new
  icecream.order_id=order.id
  icecream.flavor_id=params[:flavor_one]
  icecream.save
  
  iceflavor=IceCreamFlavor.new
  iceflavor.order_id=order.id
  iceflavor.flavor_id=params[:flavor_two]
  iceflavor.save
  
  mixin=MixIn.new
  mixin.order_id=order.id
  mixin.mix_id=params[:mixin_one]
  mixin.save
  
  mix=MixIn.new
  mix.order_id=order.id
  mix.mix_id=params[:mixin_two]
  mix.save
  
  mixes=MixIn.new
  mixes.order_id=order.id
  mixes.mix_id=params[:mixin_three]
  mixes.save
  
  topping=Topping.new
  topping.order_id=order.id
  topping.toppin_id=params[:topping_one]
  topping.save
  
  toppin=Topping.new
  toppin.order_id=order.id
  toppin.toppin_id=params[:topping_two]
  toppin.save
  
  redirect to("order/#{order.id}")
  
end

get '/order/:id' do
  id = params[:id]
  @order = Order.find(id)
  #b.second.flavor.name
  #b = a.ice_cream_flavors

  "Hello thank you for ordering Scoop 'n Smiles ice cream. Your #{@order.scoops} scoop of 
end