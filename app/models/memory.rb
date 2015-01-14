class Memory
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :body, type: String
  belongs_to :user
  #embeds_many :comments
  def date_published
  	self.created_at.localtime.strftime("%A, %B %-d, %Y at %l:%M %p")
  end

  #validates_associated :user on: :update
  #validates_associated :user on: :destroy

end
