class TimesController < ApplicationController
  def main
    @time = Time.now.asctime
  end
end
