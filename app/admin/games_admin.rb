Trestle.resource(:games) do
  menu do
    item :games, icon: "fa fa-gamepad"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :slug
    column :name
    column :version
    column :hidden
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |experience|
    text_field :slug
    text_field :name
    text_field :company
    text_field :version
    check_box :hidden

    row do
      col { datetime_field :started_at }
      col { datetime_field :ended_at }
    end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  params do |params|
    params.require(:experience).permit(:slug, :name, :company, :version, :hidden)
  end
end