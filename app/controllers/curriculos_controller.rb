class CurriculosController < ApplicationController
    before_action :find_curriculo, only: [:show, :edit, :update, :destroy]
    def index
        @curriculo = Curriculo.all.order("nome DESC")
    end

    def show
    end

    def new
        @curriculo = Curriculo.new
    end

    def create
        @curriculo = Curriculo.new(curriculo_params)
        if @curriculo.save
            redirect_to @curriculo, notice: "Currículo enviado com sucesso. Aguarde o contado do nosso setor de RH."
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @curriculo.update(curriculo_params)
            redirect_to @curriculo
        else
            render 'edit'
        end
    end

    def destroy
        @curriculo.destroy
        redirect_to root_path, notice: "Curriculo apagado com sucesso."
    end


    private

    def curriculo_params
        params.require(:curriculo).permit(:nome, :email)
    end

    def find_curriculo
        @curriculo = Curriculo.find(params[:id])
    end
end
