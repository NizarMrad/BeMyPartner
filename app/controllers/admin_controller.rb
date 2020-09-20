# frozen_string_literal: true

class AdminController < ApplicationController
  def index
    @users = User.all
    @articles = Article.all
    @profiles = Profile.all
    @projects = Project.all
  end

  def destroy
    @profile.destroy
    @user.destroy
    @article.destroy
    @project.destroy
  end

  def show; end
end
