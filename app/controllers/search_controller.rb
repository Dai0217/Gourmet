class SearchController < ApplicationController
  require 'net/http'
  require 'uri'
  require 'json'
  def top
    if params[:free]
      params[:free]=params[:free].gsub("　",",")
      @b=params[:free]
      uri = URI.parse URI.encode('https://api.gnavi.co.jp/RestSearchAPI/v3/?keyid=b8eb3d08f329b73c20a2df901dfa57c5&freeword='+"#{params[:free]}")
    else
      uri = URI.parse URI.encode('https://api.gnavi.co.jp/RestSearchAPI/v3/?keyid=b8eb3d08f329b73c20a2df901dfa57c5&id=')
    end
    json = Net::HTTP.get(uri)
    @result = JSON.parse(json)
    @a=@result["rest"].size
    
  end
end
