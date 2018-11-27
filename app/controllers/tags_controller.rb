class TagsController < ApplicationController

  def index
    @tags = Tag.all
    @sorted_tags = Array.new
    Tag.order(updated_at: :desc).map(&:name).each do |t|
      @sorted_tags << t.split
    end
      @sorted_tags.flatten!.uniq!
  end

end
