class FilmsController < ApplicationController
    before_action :authenticate_user!
end
