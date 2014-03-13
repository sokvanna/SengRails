ActiveAdmin.register Product do

permit_params :name, :price, :description, :category_id, :photo
form :html => { :enctype => "multipart/form-data" } do |f| 
f.inputs "Product", :multipart => true do 
f.input :name 
f.input :price
f.input :description
 f.input :category
f.input :photo, :required => false, :as => :file

 end 
f.actions end 

  index do
    column :name
    column :category
   column :created_at

	
    column :price, :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price
      end
    end
    default_actions
  end

  
end
