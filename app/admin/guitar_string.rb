ActiveAdmin.register GuitarString do
index do
    column :name
    column :description
    column :price, :sortable => :price do |guitarString|
      div :class => "price" do
        number_to_currency guitarString.price
      end
    end
    column :image
    column "Created", :created_at
    default_actions
  end
end
