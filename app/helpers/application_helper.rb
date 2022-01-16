module ApplicationHelper
    def show_errors(object, field_name)
        if object.errors.any?
            if !object.errors.messages[field_name].blank?
                object.errors.messages[field_name].join(" and ")
            end
        end
    end
end
