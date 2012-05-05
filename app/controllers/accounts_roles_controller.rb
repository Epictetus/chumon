class AccountsRolesController < ApplicationController
  before_filter :login_required

  # GET /accounts_roles
  # GET /accounts_roles.json
  def index
    @accounts_roles = AccountsRole.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @accounts_roles }
    end
  end

  # GET /accounts_roles/1
  # GET /accounts_roles/1.json
  def show
    @accounts_role = AccountsRole.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @accounts_role }
    end
  end

  # GET /accounts_roles/new
  # GET /accounts_roles/new.json
  def new
    @accounts_role = AccountsRole.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @accounts_role }
    end
  end

  # GET /accounts_roles/1/edit
  def edit
    @accounts_role = AccountsRole.find(params[:id])
  end

  # POST /accounts_roles
  # POST /accounts_roles.json
  def create
    @accounts_role = AccountsRole.new(params[:accounts_role])

    respond_to do |format|
      if @accounts_role.save
        format.html { redirect_to @accounts_role, notice: 'Accounts role was successfully created.' }
        format.json { render json: @accounts_role, status: :created, location: @accounts_role }
      else
        format.html { render action: "new" }
        format.json { render json: @accounts_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /accounts_roles/1
  # PUT /accounts_roles/1.json
  def update
    @accounts_role = AccountsRole.find(params[:id])

    respond_to do |format|
      if @accounts_role.update_attributes(params[:accounts_role])
        format.html { redirect_to @accounts_role, notice: 'Accounts role was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @accounts_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accounts_roles/1
  # DELETE /accounts_roles/1.json
  def destroy
    @accounts_role = AccountsRole.find(params[:id])
    @accounts_role.destroy

    respond_to do |format|
      format.html { redirect_to accounts_roles_url }
      format.json { head :no_content }
    end
  end
end
