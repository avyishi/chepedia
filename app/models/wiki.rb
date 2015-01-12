class Wiki < ActiveRecord::Base
  require 'librato/metrics'
  Librato::Metrics.authenticate 'avyishi@gmail.com', '43a3a9d32f4ddf20ad5ca01db38e270c861448701f08834afb66ce963cd09fc1'
  Librato::Metrics.submit :my_metric => 42, :my_other_metric => 1002
  
  belongs_to :user
  has_many :users


  default_scope { order('created_at DESC') }

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

  #def should_generate_new_friendly_id?
   # new_record?
  #end

  
end
