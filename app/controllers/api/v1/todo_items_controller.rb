class Api::V1::TodoItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_todo_item, only: [:show, :edit, :update, :destroy]
    def index
        @todo_items = TodoItem.all
    end
    def show
    end
    def create
    end
    def update
    end
    def destroy
    end
    private
        def set_todo_item
            @todo_item = TodoItem.find(params[:id])
        end

        def authorized?
            @todo_item.user == current_user
        end
end
