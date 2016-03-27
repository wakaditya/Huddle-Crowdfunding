class Event
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :tag, as: :event_type, type: String
  field :c, as: :collection, type: Float, default: -> { 0.0 }
  field :dline, as: :funding_deadline, type: DateTime, default: -> { Date.today + 30 }
  field :e_date, as: :event_date, type: Date, default: -> { Date.today + 60 }
  field :r, as: :rating, type: Range
  field :location, type: Address
  field :ticket, type: Ticket

  has_many :backers, order: [:"paid_amount".asc], dependent: :delete

  scope :upcoming, -> { where(:e_date.gte => Date.current) }
  scope :past, -> { where(:e_date.lt => Date.current) }


end