module Inploy
  module VersionControl
    module Git
      def checkout(branch)
        "git checkout -f -b #{branch} origin/#{branch}"
      end
      def clone(repository, application)
        "git clone --depth 1 #{repository} #{application}"
      end
      def update(branch)
        "git pull origin #{branch}"
      end
      def branches
        "git branch"
      end
      def update_submodules
        "git submodule update --init"
      end
    end
  end
end