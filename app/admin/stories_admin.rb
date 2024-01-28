Trestle.resource(:stories) do
  menu do
    item :stories, icon: "fa fa-book"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :title
    column :experience do |story|; story.experience.name; end
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  #
  form do |story|
    text_field :title
    text_area :content, rows: 10

    collection_select :experience_id, Experience.all, label: "Experience"
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  params do |params|
    params.require(:story).permit(:title, :content, :experience_id)
  end
end
