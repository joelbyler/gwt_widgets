class GwtWidgets::SuggestBox < PageObject::Elements::TextField

  def self.accessor_methods(accessor, name)
    accessor.send :define_method, "#{name}" do
      suggestion_box = self.send "#{name}_element"
    end
    accessor.send :define_method, "#{name}=" do | value |
      suggestion_box = self.send "#{name}_element"
      suggestion_box.parent.text_field_element.value = value
    end
    accessor.send :define_method, "#{name}_suggestions" do
      div_element(:class => 'gwt-SuggestBoxPopup').cell_elements(:class => 'item').map(&:text)
    end
    accessor.send :define_method, "#{name}_choose" do | label |
      div_element(:class => 'gwt-SuggestBoxPopup').cell_element(:class => 'item', :text => label).click
    end
  end

end
