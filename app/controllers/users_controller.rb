class UsersController < ApplicationController
  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        # tell UserMailer to send welcome email after save
        UserMailer.with(user: @user).welcome_email.deliver_later

        format.html { redirect_to(@user, notice: 'User successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end

# NOTE: Active Job's default behavior is to execute jobs via the :async adapter. So, you can use deliver_later now to send emails asynchronously. Active Job's default adapter runs jobs with an in-process thread pool. It's well-suited for the development/test environments, since it doesn't require any external infrastructure, but it's a poor fit for production since it drops pending jobs on restart. If you need a persistent backend, you will need to use an Active Job adapter that has a persistent backend (Sidekiq, Resque, etc).

 # https://guides.rubyonrails.org/action_mailer_basics.html