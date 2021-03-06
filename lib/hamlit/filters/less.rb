module Hamlit
  class Filters
    class Less < TiltBase
      def compile(node)
        require 'tilt/less' if explicit_require?
        temple = [:multi]
        temple << [:static, "<style>\n".freeze]
        temple << compile_with_tilt(node, 'less', indent_width: 2)
        temple << [:static, "</style>".freeze]
        temple
      end
    end
  end
end
