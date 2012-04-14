class Registration < ActiveRecord::Base
  belongs_to :registrable, :polymorphic => true
  belongs_to :course
end
