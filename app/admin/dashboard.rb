ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
 
 section "Recent Products" do
    table_for Product.order("created_at desc").limit(2) do
      column :name do |product|
        link_to product.name, admin_product_path(product)
      end
      column :created_at
    end
    strong { link_to "View All Products", admin_products_path }
 strong { link_to "Home Page", products_path }
  end

    # Here is an example of a simple dashboard with columns and panels.
    #
    #columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
