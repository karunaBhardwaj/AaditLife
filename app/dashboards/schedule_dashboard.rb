require "administrate/base_dashboard"

class ScheduleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    user_id: Field::Number,
    workout_type: Field::String,
    scheduled_date: Field::DateTime,
    completion_percentage: Field::Number,
    rating: Field::Number,
    comments: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,    
    :workout_type,
    :rating,
    :comments,
    :scheduled_date,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :user_id,
    :workout_type,
    :scheduled_date,
    :completion_percentage,
    :rating,
    :comments,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :scheduled_date,
    :completion_percentage,
    :rating,
    :comments,
  ].freeze

  # Overwrite this method to customize how schedules are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(schedule)
  #   "Schedule ##{schedule.id}"
  # end
end
