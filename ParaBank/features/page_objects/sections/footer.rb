module Sections
    class Footer < SitePrism::Section
        element :home_link_footer, :xpath, '//div[@id="footermainPanel"]//a[text()="Home"]'
        element :about_us_link_footer, :xpath, '//div[@id="footermainPanel"]//a[text()="About Us"]'
        element :services_link_footer, :xpath, '//div[@id="footermainPanel"]//a[text()="Services"]'
        element :products_link_footer, :xpath, '//div[@id="footermainPanel"]//a[text()="Products"]'
        element :locations_link_footer, :xpath, '//div[@id="footermainPanel"]//a[text()="Locations"]'
        element :forum_link_footer, :xpath, '//div[@id="footermainPanel"]//a[text()="Forum"]'
        element :site_map_link_footer, :xpath, '//div[@id="footermainPanel"]//a[text()="Site Map"]'
        element :contact_us_link_footer, :xpath, '//div[@id="footermainPanel"]//a[text()="Contact Us"]'
        element :copyright_text_footer, :xpath, '//div[@id="footermainPanel"]//p[@class="copyright"]'
        element :visit_us_link_footer, :xpath, '//div[@id="footermainPanel"]//ul[@class="visit"]//a[text()="www.parasoft.com"]'
    end
end