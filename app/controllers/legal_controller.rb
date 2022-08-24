class LegalController < ApplicationController
  def index
    @renderer = RichTextRenderer::Renderer.new
  end
end