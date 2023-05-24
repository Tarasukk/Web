module ApplicationHelper
    def sortable(column, title = nil,css_class = nil)
        title ||= column.titleize
        direction = (column == sort_column && sort_direction == "asc")? "desc" : "asc"
        link_to title, { sort: column, direction: direction }, class: css_class
    end

    def my_color_for(num)
        if num <= -1
          'text-red'
        elsif num >= 1
          'text-green'
        end
    end

    def sort_direction_arrow(name)
      if sort_direction == 'desc' && sort_column == name
        content_tag :div do
          concat fa_icon('arrow-up 10x')
        end
      elsif sort_direction == 'asc' && sort_column == name
        content_tag :div do
          concat fa_icon(' arrow-up rotate-180')
        end
      else
        content_tag :div do
          concat fa_icon('circle')
        end
      end
    end

    def test(price)
      if price.present?
        content_tag :p do
          concat "$#{price.round(2)}"
        end
      else
        content_tag :p do
          concat 0
        end
      end
    end
end
