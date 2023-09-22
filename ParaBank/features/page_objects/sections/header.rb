require_relative '../sections/top_panel'
require_relative '../sections/solutions_menu'

module Sections
    class Header < SitePrism::Section
      section :top_panel, Sections::Top_Panel, 'div#topPanel'
      section :solutions_menu, Sections::Solutions_Menu, 'div#headerPanel ul.leftmenu'
      element :home_button, '#headerPanel ul.button li.home a'
      element :about_us_button, '#headerPanel ul.button li.aboutus a'
      element :contact_button, '#headerPanel ul.button li.contact a' 
    end
end