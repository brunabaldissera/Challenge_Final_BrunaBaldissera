module Sections
    class Top_Panel < SitePrism::Section
      element :logo, 'a[title="ParaBank"]'
      element :caption, '.caption'
    end
end