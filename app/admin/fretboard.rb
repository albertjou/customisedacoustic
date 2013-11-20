ActiveAdmin.register Fretboard do
  index do
    column :name
    column :description
    column :price, :sortable => :price do |fretboard|
      div :class => "price" do
        number_to_currency fretboard.price
      end
    end
    column :image
    column "Created", :created_at
    default_actions
  end
end
