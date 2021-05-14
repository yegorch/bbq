class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  with_options unless: -> { user.present? } do
    validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/
    validates :user_email, uniqueness: {scope: :event_id}
    validates :user_name, presence: true
    validate :email_is_not_registered
  end
  
  with_options if: -> { user.present? } do
    validates :user, uniqueness: { scope: :event_id }
    validate :user_is_not_event_owner
  end

  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  private

  def user_is_not_event_owner
    errors.add(:user, :event_owner) if event.user == user
  end

  def email_is_not_registered
    errors.add(:user_email, :error_email) if User.exists?(email: user_email)
  end
end
