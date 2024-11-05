class ItemsController < ApplicationController
  def index
    @list_of_items = Item.all

    render({ :template => "item_templates/list" })
  end
  def backdoor
    render({ :template => "item_templates/backdoor"})
  end
  def insert
    itm = Item.new
    itm.link_url = params.fetch("query_link_url")
    itm.link_description = params.fetch("query_link_description")
    itm.thumbnail_url = params.fetch("query_thumbnail_url")
    itm.save

    redirect_to("/")

  end
end
