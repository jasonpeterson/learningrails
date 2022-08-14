class EntriesController < ApplicationController
  def sign_in
    @name = params[:visitor_name]
    unless @name.blank?
        @entry = Entry.create({:name => @name}) # nothing special about @entry - could be @foo
        # this is encapsulating three discrete actions:
        #  @entry = Entry.new
        #  @entry.name = @name
        #  @entry.save
    end

    @entries = Entry.all
  end
end
