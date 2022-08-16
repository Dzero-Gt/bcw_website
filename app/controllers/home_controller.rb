class HomeController < ApplicationController
  def index
    @renderer = RichTextRenderer::Renderer.new
  end
end