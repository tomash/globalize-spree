class GlobalizeSpreeHooks < Spree::ThemeSupport::HookListener
  # custom hooks go here
  replace :admin_product_form_left, 'admin/shared/product_globalize_form_left'
end