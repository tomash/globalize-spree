Deface::Override.new(:virtual_path  => "admin/products/_form",
         :replace => "[data-hook='admin_product_form_left']",
         :partial => "admin/shared/product_globalize_form_left",
         :name    => "product_globalize_form_left")