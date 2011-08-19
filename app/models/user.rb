class User
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :attributes, :persisted

  validates_presence_of :first_name, :last_name
  
  def initialize(attrs = {})
    @attributes = attrs
    @persisted = false
  end

  def save
    self.valid?
  end

  def persisted?
    @persisted
  end

  def id
    @attributes[:id]
  end

  def first_name
    @attributes[:first_name]
  end

  def first_name=(fname)
    @attributes[:first_name] = fname
  end
  
  def last_name
    @attributes[:last_name]
  end

  def last_name=(lname)
    @attributes[:last_name] = lname
  end
end
