class ChunksController < ApplicationController
  expose :chunk
  expose :chunks, -> { Chunk.includes(:facets, :tasks, :appointments, :people).all }

  def index
    render json: chunks
  end

  def create
    render json: chunk && return if chunk.save(chunk_params)
    render json: chunk.errors
  end

  def update
    render json: chunk && return if chunk.update(chunk_params)
    render json: chunk.errors
  end

  def destroy
    render json: chunk && return if chunk.destroy
    render json: chunk.errors
  end

  private def chunk_params
    params.require(:chunk).permit(:title, :content, :time)
  end
end
