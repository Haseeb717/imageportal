ActiveAdmin.register Item do
	actions :all, :except => [:new]
  permit_params :status

  form do |f|
    f.inputs "Item Details" do
    	f.input :status, :prompt => 'Active', :as => :select, :collection => Item.statuses.keys.to_a
    end
    f.actions
  end

	show do
    attributes_table do
      row :id
      row :title
      row :image_url
      row "User" do |n|
      	link_to(n.user.first_name, admin_user_path(n.user_id))
    	end
    	row "Category" do |n|
      	link_to(n.category.title, admin_category_path(n.category_id))
    	end
      row :status
    end
  end

  index do
    selectable_column
    column :title
    column :image_url
    column "User" do |n|
    	link_to(n.user.first_name, admin_user_path(n.user_id))
  	end
  	column "Category" do |n|
    	link_to(n.category.title, admin_category_path(n.category_id))
  	end
    column :status
    actions
  end

  filter :title
	filter :image_url
  filter :status,as: :select, collection: Item.statuses

end
