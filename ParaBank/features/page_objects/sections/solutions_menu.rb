module Sections
    class Solutions_Menu < SitePrism::Section
        element :about_us_link_menu, :xpath, '//ul[@class="leftmenu"]//a[text()="About Us"]'
        element :services_link_menu, :xpath, '//ul[@class="leftmenu"]//a[text()="Services"]'
        element :products_link_menu, :xpath, '//ul[@class="leftmenu"]//a[text()="Products"]'
        element :locations_link_menu, :xpath, '//ul[@class="leftmenu"]//a[text()="Locations"]'
        element :admin_page_link_menu, :xpath, '//ul[@class="leftmenu"]//a[text()="Admin Page"]'
    end
end