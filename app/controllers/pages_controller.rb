class PagesController < ApplicationController
  def index
    @districts = District.all
    @spaces = Space.all
  end

  def nosotros
  end

  def reserva
  end

  def confirmacion
  end

  def faq
  end

  def contacto
  end
  
  def search
    @districts = District.all
    @spaces = Space.all
  end
  
end
