module CategoriesHelper
  def categories_menu
    links = Category.all.map do |category|
      content_tag :li do
        link_to "Price: #{category.name}$", category
      end
    end

      raw(links.join("\n"))
  end
end
