# Be sure to restart your server when you modify this file.

class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
  end

  def contact
  end
end

# ApplicationController.renderer.defaults.merge!(
#   http_host: 'example.org',
#   https: false
# )
