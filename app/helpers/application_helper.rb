module ApplicationHelper

  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new

    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render('vitrage/' + new_object.class.name.underscore + "_fields", f: builder)
    end
    link_to name, 'javascript:void(0)', onclick: "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"
  end

end
