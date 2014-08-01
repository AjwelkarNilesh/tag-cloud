class TagCloudController < ApplicationController
  def index
    weight = [1,2,3,4,5,6,7,8,9,10]
    tag_names = ["Minakshi","Rashmi","Rupali","Deepali","Rajeshree","Seema","Manoj","Amit","Pankaj","Nilesh"]
    tags = []
    10.times.each_with_index do |i, index|
      rand_weight = weight.shuffle.first
      tag_name = tags[i]
      options_hash = {'text' => tag_names[i], 'weight'=>rand_weight}
      options_hash.merge!({"html" => {"class"=> "vertical"}}) if (index % 3) < 1
      tags << options_hash
      weight.delete(rand_weight)
    end
    @tags_for_cloud = tags.to_json.html_safe
  end
end

