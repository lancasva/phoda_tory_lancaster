class PhotographerProfile < ActiveRecord::Base

has_many :users
has_many :job_requests
end
