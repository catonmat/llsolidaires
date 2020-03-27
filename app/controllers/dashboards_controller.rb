class DashboardsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def owner
    @flats = Flat.all
  end

  def medical
    @flats = Flat.all
  end

  def send_sos_mail
    # Implémenter la méthode d'envoi de mail SOS
    redirect_to root_path
  end
end
