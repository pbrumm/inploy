module Inploy
  module VersionControl
    module Mercurial
      def checkout(branch)
        "hg checkout -r #{branch}"
      end
      def clone(repository, application)
        "hg clone #{repository}/#{application}"
      end
      def update(branch)
        "hg pull -u #{branch}"
      end
      def branches
        "hg branches"
      end
      def update_submodules
        ""
      end
    end
  end
end