require 'faraday_middleware'
class ClearbitController < ApplicationController
  def index
  end

  def search
    url = 'https://autocomplete.clearbit.com/v1/companies/suggest?query=' + params[:term]
    conn = Faraday.new
    conn.use FaradayMiddleware::ParseJson, content_type: 'application/json'
    @companies = []

    return '' if params[:term].blank?

    res = conn.get do |req|
      req.url url
      req.headers['Content-Type'] = 'application/json'
    end

    @companies = res.body

    render layout: false
  end
end
