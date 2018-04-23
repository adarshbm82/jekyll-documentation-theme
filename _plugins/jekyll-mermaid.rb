# based on https://github.com/jasonbellamy/jekyll-mermaid
module Jekyll
  class Mermaid < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      print 'generate image'
      "<div class=\"mermaid\">#{super}</div>"
    end
  end
end

Liquid::Template.register_tag('mermaid', Jekyll::Mermaid)
