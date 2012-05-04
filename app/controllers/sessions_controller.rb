# -*- coding: utf-8 -*-
class SessionsController < ApplicationController
  # GET /sessions/new
  def new
  end

  # POST /sessions
  # POST /sessions.json
  def create
    respond_to do |format|
      account = Account.authenticate(params[:login], params[:password])

      if account
        self.current_user = account
        format.html { redirect_back_or_default '/', notice: 'Session was successfully created.' }
        format.json { render json: @session, status: :created, location: @session }
      else
        flash.notice = 'ログイン失敗'
        format.html { render action: "new" }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy

    logout_killing_session!
    respond_to do |format|
      format.html { redirect_back_or_default '/' }
    end
  end
end
