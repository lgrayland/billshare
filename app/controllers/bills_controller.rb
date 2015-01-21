class BillsController < ApplicationController
  before_action :set_bill, only: [:show, :edit, :update, :destroy]

  # GET /bills
  # GET /bills.json
  def index
    @bills = Bill.all
  end

  # GET /bills/1
  # GET /bills/1.json
  def show
    @bill = Bill.find(params[:id])
  end

  # GET /bills/new
  def new
    @group = Group.find(params[:group_id])
    @bill = Bill.new
    @bill_types = BillType.where(group_id: @group.id)
  end

  # GET /bills/1/edit
  def edit
    @group = Group.find(params[:group_id])
    @bill_types = BillType.where(group_id: @group.id)
    @bill = Bill.find(params[:id])
  end

  # POST /bills
  # POST /bills.json
  def create
    @group = Group.find(params[:group_id])
    @bill = @group.bills.new(bill_params)
    respond_to do |format|
      if @bill.save
        # BillsMailer.bill_created(@bill).deliver
        format.html { redirect_to @group, notice: 'Bill was successfully created.' }
        format.json { render :show, status: :created, location: @bill }
      else
        format.html { render :new }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bills/1
  # PATCH/PUT /bills/1.json
  def update
    @group = Group.find(params[:group_id])
    @bill = Bill.find(params[:id])
    respond_to do |format|
      if @bill.update(bill_params)
        format.html { redirect_to group_bill_path(@group.id, @bill.id), notice: 'Bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @bill }
      else
        format.html { render :edit }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bills/1
  # DELETE /bills/1.json
  def destroy
    @bill.destroy
    respond_to do |format|
      format.html { redirect_to bills_url, notice: 'Bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bill
      @bill = Bill.find(params[:id])
    end

 

    # Never trust parameters from the scary internet, only allow the white list through.
    def bill_params
      params.require(:bill).permit(:name, :amount, :deadline, :group_id, :bill_type_id)
    end
  end
