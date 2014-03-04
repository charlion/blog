
class ComentariosController < ApplicationController

  def index
    @comentarios = Comentario.all
  end


  def show
  end

  def create
	@post = Post.find(params[:post_id])
	require 'pry'
	binding.pry
	@post.comentarios.create(comentario_params)
	@comentario = @post.comentarios



	redirect_to post_path(@post)
  end

  def destroy
	@post = Post.find(params[:post_id])
	@comentario = @post.comentarios.find(params[:id])
	redirect_to post_path(@post)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
#Comentario(id: integer, autor: string, conteudo: string, text: string, post_id: integer, created_at: datetime, updated_at: datetime)
    def comentario_params
      params.require(:comentario).permit(:autor, :conteudo)
    end
  
end

