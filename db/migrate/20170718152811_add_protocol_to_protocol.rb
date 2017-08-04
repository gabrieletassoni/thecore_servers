class AddProtocolToProtocol < ActiveRecord::Migration[5.1]
  class Protocol < ApplicationRecord
    has_many :servers, inverse_of: :protocol, dependent: :destroy

    validates :name, presence: true, uniqueness: true

    rails_admin do
      visible false
      # navigation_label I18n.t('admin.settings.label')
      # navigation_icon 'fa fa-plug'
    end
  end

  def up
    %w( ftp http https ssh smb sftp ntp smtp smtps smtp-tls imap imaps imap-tls pop pops pop-tls ).each do |proto|
      Protocol.create name: proto
    end
  end

  def down
    Protocol.delete_all
  end
end
