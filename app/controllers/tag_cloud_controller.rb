class TagCloudController < ApplicationController
  def index
    weight = [1,2,3,4,5,6,7,8,9,10]
    tags = ["Minakshi","Rashmi","Rupali","Deepali","Rajeshree","Seema","Manoj","Amit","Pankaj","Nilesh"]
    @tags_for_cloud = []
    10.times.each do |i|
      rand_weight = weight.shuffle.first
      tag_name = tags[i]
      @tags_for_cloud << {'text' => tags[i], 'weight'=>rand_weight}
      weight.delete(rand_weight)
    end
  end
end

