ActiveAdmin.register BodyShape do
index do
    column :name
    column :description
    column :price, :sortable => :price do |body_shape|
      div :class => "price" do
        number_to_currency body_shape.price
      end
    end
    column :image
    column "Created", :created_at
    default_actions
  end
end