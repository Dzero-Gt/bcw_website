class AcpController < ApplicationController
  def index
    @renderer = RichTextRenderer::Renderer.new
  end
end