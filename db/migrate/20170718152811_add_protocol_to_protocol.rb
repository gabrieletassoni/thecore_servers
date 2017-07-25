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
  
  @protocols = %w{ ftp http https ssh smb sftp ntp smtp smtps smtp-tls imap imaps imap-tls pop pops pop-tls }
  def up
    @protocols.each do |proto|
      p = Protocol.new name: proto
      p.save
    end
  end

  def down
    @protocols.each do |proto|
      p = Protocol.where(name: proto).first
      unless p.nil?
        p.destroy
      end
    end
  end
end
