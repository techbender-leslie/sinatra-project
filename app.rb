class RestfulControllerApp < Sinatra::Base

get "/" do
  erb :"index"
end

get "/countries" do
  @countries = ["Ethiopia", "India", "Spain", "Thailand", "Italy"]
  @country_pics = ["https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSYCJf1hu9bgf0MSNHqSsM8h-lXc2BI1GdeCnTO8eli_1K0CfvDQA", "http://33.media.tumblr.com/0a61cc902571bd05d3d8b1e9f85368fe/tumblr_inline_nj8etky1RH1syinz1.jpg"]
  erb :"countries"
end

get "/countries/:id" do
  @countries = ["Ethiopia", "India", "Spain", "Thailand", "Italy"]
  @country_pics = [""]
  @country = @countries[(params[:id].to_i) -1]
  @food_pic = [""]
  erb :show
end



end
