class WordsController < ApplicationController

    get "/words" do
        Word.all.to_json(include: [:comments])
    end

    get "/words/random" do
    word = Word.random
    word.to_json(include: [:comments])
    end

    get "/words/:id" do
    word = Word.find(params[:id])
    word.to_json(include: [:comments])
    end

    post "/words" do
    new_word = Word.create(
        word: params[:words],
        user: params[:user]
    )
    new_word.to_json(include: [:comments])
    end

    delete '/words/:id' do
    word = Word.find(params[:id])
    word.destroy
    word.to_json(include: [:comments])
    end

end