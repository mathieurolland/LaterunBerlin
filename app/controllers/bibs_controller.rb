class BibsController < ApplicationController
  def new
    @bib = Bib.new
    @races_names_table = []
    Race.all.each { |r| @races_names_table << r.name }
  end

  def create
    @bib = current_user.bibs.new(bib_params)
    if @bib.save
      redirect_to dashboard_path
    else
      render :new
    end
  end


  def show
  end

  def update
  end

  def destroy
  end

  private

  def bib_params
    params[:bib].permit(:bought_price,:selling_price, :status, :race_id, :seller)
  end

end
