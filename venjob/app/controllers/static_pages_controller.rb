class StaticPagesController < ApplicationController
  def def_home
    render html:"There's Home"
  end

  def def_help
    render html: "There's Help"
  end

  def def_about
    render html: "There's About"
  end
end
