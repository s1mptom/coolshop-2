module CategoriesHelper
  def categories_menu
    links = Category.all.map do |category|
      content_tag :li do
        link_to "Price: #{category.name}$", category
      end
    end

    content_tag :ul do
      raw(links.join("\n"))
    end
  end
end
