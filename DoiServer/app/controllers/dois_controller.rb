class DoisController < ApplicationController
  before_action :check_user!, except: [:search]
  before_action :set_doi, only: [:show, :edit, :update, :destroy]

  # GET /dois
  # GET /dois.json
  def index
    @dois = Doi.all
  end

  # Will perform our search.
  def search
	  @dois = Doi.where("name = ?", params[:query])
	  if @dois.count == 0
		  redirect_to root_path, :alert => 'No DOIs found'
	  end
  end

  # This will retrieve the dois for the current user.
  def udois
    @dois = Doi.find(:all, :conditions => ["user_id = ?", current_user.id])
  end

  # GET /dois/1
  # GET /dois/1.json
  def show
  end

  # GET /dois/new
  def new
    @doi = Doi.new(:user_id => params[:user_id])
  end

  # GET /dois/1/edit
  def edit
    @doi.url = Url.where("doi_id = ?", params[:id]).last.url
  end

  # POST /dois
  # POST /dois.json
  def create
    @doi = Doi.new(doi_params)

    if @doi.save
	    @url = Url.new
	    @url.doi_id=@doi.id
	    if params[:doi][:url] =~ /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
		    @url.url = params[:doi][:url]
	    else
		    @url.url = 'INVALID URL'
	    end
	    @url.save
    end

    respond_to do |format|
      if @doi.save
        format.html { redirect_to @doi, notice: 'Doi was successfully created.' }
        format.json { render action: 'show', status: :created, location: @doi }
      else
        format.html { render action: 'new' }
        format.json { render json: @doi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dois/1
  # PATCH/PUT /dois/1.json
  def update

    @url = Url.new
    @url.doi_id = @doi.id

    if params[:doi][:url] =~ /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
    	@url.url = params[:doi][:url]
    else
	redirect_to @doi, alert: 'A full URL is required. Ex: http://www.google.com'
	return
    end

    if !@url.save
	redirect_to @doi, alert: 'Failed to update the URL, please try again.'
    end

    respond_to do |format|
      if @doi.update(doi_params)
        format.html { redirect_to @doi, notice: 'Doi was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @doi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dois/1
  # DELETE /dois/1.json
  def destroy
    @doi.destroy
    respond_to do |format|
      format.html { redirect_to dois_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doi
      @doi = Doi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doi_params
      params.require(:doi).permit(:name, :description, :user_id, :url)
    end
end
