class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]


  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  def create
    @company = Company.new(company_params)
     if @company.save
        current_user.profile.company_id = @company.id
        current_user.profile.save
        session[:company_id] = @company.id
        flash[:success] = t(:company_created)
        redirect_to :controller => :welcome, :action => :gestionus
      else
        render :new
      end
  end

  # PATCH/PUT /companies/1
  def update
      if @company.update(company_params)
        flash[:success] = t(:company_updated)
        redirect_to @company
      else
        render :edit
      end
  end

  # DELETE /companies/1
  def destroy
    @company.destroy
    flash[:success] = t(:company_deleted)
    redirect_to companies_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :administrator, :cif, :telephone, :other_telephone, :mobile, :fax, :mail, :web, :observations)
    end
end
