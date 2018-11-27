class TagsController < ApplicationController

  def index
    @all_tags = Tag.all
    @specs = Spec.all
    @sorted_tags = Array.new
    Tag.order(updated_at: :desc).map(&:name).each do |t|
      @sorted_tags << t.split
    end
      @sorted_tags.flatten!.uniq!
  end

end
