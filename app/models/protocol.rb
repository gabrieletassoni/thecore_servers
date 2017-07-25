class Protocol < ApplicationRecord
  has_many :servers, inverse_of: :protocol, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  rails_admin do
    visible false
    # navigation_label I18n.t('admin.settings.label')
    # navigation_icon 'fa fa-plug'
  end
end
