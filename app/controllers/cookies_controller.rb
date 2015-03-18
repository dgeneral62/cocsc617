class CookiesController < ApplicationController
  def index
    cookies[:the_time] = Time.now.to_s;
    redirect_to :action => "time"
    @cookie_value = cookies[:the_time] = { :value => "time", :expires => 120.days.from_now :path => "/cookies"}
  end

  def next_visit
    @cookie_value = cookies[:the_time]

    render(:text => "The last time you visited was #{@cookie_value }")
  end
end
