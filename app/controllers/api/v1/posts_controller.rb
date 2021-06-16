
module Api 
    module V1 
        class PostsController < ApplicationController

            def index
                posts = Post.order('created_at').page(params[:page]).per(25);
                render json: {
                    status: 'EXITOSO',
                    message: 'Posts cargados',
                    data: posts
                }, status: :ok
            end  
            
            def show
                post = Post.find(params[:id])
                render json: {
                    status: 'EXITOSO',
                    message: 'Post cargado',
                    data: post    
                }, status: :ok
            end

            def create
                post = Post.new(character_params)
                if post.save
                    render json: {
                        status: 'Exitoso',
                        message: 'Post creado',
                        data: post
                    }, status: :ok
                else 
                    render json: {
                        status: 'Exitoso',
                        message: 'Post no Creado',
                        data: post.errors
                    }, status: :unprocessable_entity
                end            
            end

            def destroy
                post = Post.find(params[:id])
                if post.destroy
                    render json: {
                        status: 'EXITOSO',
                        message: 'Post eliminado',
                        data: post
                    }, status: :ok
                else 
                    render json: {
                        status: 'FALLIDO',
                        message: 'Post NO BORRADO',
                        data: post.errors
                    }, status: :unprocessable_entity
                end
            end

            def update
                post = Post.find(params[:id])
                if post.update(character_params)
                    render json: {
                        status: 'EXITOSO',
                        message: 'Post actualizado',
                        data: post
                    }, status: :ok
                else 
                    render json: {
                        status: 'FALLIDO',
                        message: 'Post NO ACTUALIZADO',
                        data: post.errors
                    }, status: :unprocessable_entity
                end
            end

            private
            def character_params
                params.permit(:name, :year, :weigh, :story, :picture)
            end    

        end        
    end
end