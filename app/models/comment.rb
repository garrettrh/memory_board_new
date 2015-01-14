class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :body, type: String
  embedded_in :memory

  def date_added
    created_at.localtime.strftime("%-m/%-d/%Y | %l:%M %p")
  end

  validates :body, presence: :true

end
