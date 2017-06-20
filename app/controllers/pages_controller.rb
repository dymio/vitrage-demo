class PagesController < ApplicationController

  def index
    redirect_to root_path
  end

  def show
    @page = Page.find_by_slug(params[:id])
  end

  def edit
    @page = Page.find_by_slug(params[:id])
  end

  def create
    @page = Page.new(uip: request.remote_ip)

    if @page.save
      redirect_to page_path(@page.slug)
    else
      redirect_to root_path
    end
  end

end
