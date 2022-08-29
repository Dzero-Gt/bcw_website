class ContactController < ApplicationController
  def index
    @renderer = RichTextRenderer::Renderer.new
  end
end