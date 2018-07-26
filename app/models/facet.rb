class Facet < ApplicationRecord
  belongs_to :chunk
  belongs_to :appointment, optional: true
  belongs_to :person, optional: true
  belongs_to :task, optional: true
  # validates :task_id, uniqueness: { scope: %i[appointment_id person_id] }
  # validates :person_id, uniqueness: { scope: %i[appointment_id task_id] }
  # validates :appointment_id, uniqueness: { scope: %i[person_id task_id] }
end
