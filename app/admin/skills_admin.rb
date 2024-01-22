Trestle.resource(:skills) do
  menu do
    group :input_data do
      item :skills, icon: "fa fa-code"
    end
  end

  table do
    column :name
    column :created_at
    actions
  end

  form do |skill|
    text_field :icon
    text_field :color
    text_field :name
  end

  params do |params|
    params.require(:skill).permit(:icon, :color, :name)
  end
  
  controller do
    def index
      super
    end

    def show
      super
    end

    def new
      super if current_user.admin?
    end

    def create
      super if current_user.admin?
    end

    def edit  
      super if current_user.admin?
    end

    def update
      super if current_user.admin?
    end

    def destroy
      super if current_user.admin?
    end
  end
end
