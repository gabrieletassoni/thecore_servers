class Server < ApplicationRecord
  belongs_to :protocol, inverse_of: :servers

  validates :address, presence: true, uniqueness: { scope: :protocol }
  validates :protocol, presence: true

  def self.get_default_for_scope protocol
    joins(:protocol).where(protocol_default: true, protocols: {name: protocol}).order(updated_at: :desc).first
  end

  rails_admin do
    navigation_label I18n.t('admin.settings.label')
    navigation_icon 'fa fa-id-card'
  end
end
