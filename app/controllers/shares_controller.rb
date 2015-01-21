class SharesController < ApplicationController
  before_action :set_share, only: [:show, :edit, :update, :destroy]

  # GET /shares
  # GET /shares.json
  def index
    @shares = Share.all
  end

  # GET /shares/1
  # GET /shares/1.json
  def show
  end

  # GET /shares/new
  def new

    @group = Group.find(params[:group_id])
    @share = Share.new
    @shares = Share.where(bill_type_id: )
    @bill_types = BillType.where(group_id: @group.id)
    @users = @group.users
    # raise
  end

  # GET /shares/1/edit
  def edit
  end

  # POST /shares
  # POST /shares.json
  def create
    @group = Group.find(params[:group_id])
    @grouping = Grouping.find_by(user_id: params[:share][:id], group_id: params[:group_id])

    @share = Share.new(bill_type_id: params[:share][:bill_type_id], grouping_id: @grouping.id, percent: params[:share][:percent])

    # raise
    # render :index
    # respond_to do |format|
      if @share.save
        redirect_to new_group_share_path(@group)
        # format.html { redirect_to @share, notice: 'Share was successfully created.' }
        # format.json { render :show, status: :created, location: @share }
      else
        format.html { render :new }
        format.json { render json: @share.errors, status: :unprocessable_entity }
      end
    # end
  end

  # PATCH/PUT /shares/1
  # PATCH/PUT /shares/1.json
  def update
    respond_to do |format|
      if @share.update(share_params)
        format.html { redirect_to @share, notice: 'Share was successfully updated.' }
        format.json { render :show, status: :ok, location: @share }
      else
        format.html { render :edit }
        format.json { render json: @share.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shares/1
  # DELETE /shares/1.json
  def destroy
    @share.destroy
    respond_to do |format|
      format.html { redirect_to shares_url, notice: 'Share was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_share
      @share = Share.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def share_params
      params.require(:share).permit(:id, :bill_type_id, :grouping_id, :percent)
    end
end
