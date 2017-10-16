class ComplianceToolsController < ApplicationController
  before_action :set_compliance_tool, only: [:show, :edit, :update, :destroy]

  # GET /compliance_tools
  # GET /compliance_tools.json
  def index
    @compliance_tools = ComplianceTool.all
  end

  # GET /compliance_tools/1
  # GET /compliance_tools/1.json
  def show
  end

  # GET /compliance_tools/new
  def new
    @compliance_tool = ComplianceTool.new
  end

  # GET /compliance_tools/1/edit
  def edit
  end

  # POST /compliance_tools
  # POST /compliance_tools.json
  def create
    @compliance_tool = ComplianceTool.new(compliance_tool_params)

    respond_to do |format|
      if @compliance_tool.save
        format.html { redirect_to @compliance_tool, notice: 'Compliance tool was successfully created.' }
        format.json { render :show, status: :created, location: @compliance_tool }
      else
        format.html { render :new }
        format.json { render json: @compliance_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compliance_tools/1
  # PATCH/PUT /compliance_tools/1.json
  def update
    respond_to do |format|
      if @compliance_tool.update(compliance_tool_params)
        format.html { redirect_to @compliance_tool, notice: 'Compliance tool was successfully updated.' }
        format.json { render :show, status: :ok, location: @compliance_tool }
      else
        format.html { render :edit }
        format.json { render json: @compliance_tool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compliance_tools/1
  # DELETE /compliance_tools/1.json
  def destroy
    @compliance_tool.destroy
    respond_to do |format|
      format.html { redirect_to compliance_tools_url, notice: 'Compliance tool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compliance_tool
      @compliance_tool = ComplianceTool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compliance_tool_params
      params.require(:compliance_tool).permit(:customer_name, :date_of_flag, :transaction_amount_if_applicable, :notes, :customer_number, :open_or_closed)
    end
end
