ActiveAdmin.register Bridge do
index do
    column :name
    column :description
    column :price, :sortable => :price do |bridge|
      div :class => "price" do
        number_to_currency bridge.price
      end
    end
    column :image
    column "Created", :created_at
    default_actions
  end
end
