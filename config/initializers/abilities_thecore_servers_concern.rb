require 'active_support/concern'

  module ThecoreServerAbilitiesConcern
    extend ActiveSupport::Concern
    included do
      def thecore_servers_abilities user
        if user
          # if the user is logged in, it can do certain tasks regardless his role
          if user.admin?
            # if the user is an admin, it can do a lot of things, usually
            can :manage, :all
          end

          if user.has_role? :role
            # a specific role, brings specific powers
          end
        end
      end
    end
  end

  # include the extension
  TheCoreAbilities.send(:include, ThecoreServerAbilitiesConcern)
