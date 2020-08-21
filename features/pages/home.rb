class Home < SitePrism::Page
    set_url 'https://www.casasbahia.com.br/'

    element :input_search, '#strBusca'
    element :search_button, '#btnOK'

    def search_product(product)
        input_search.visible?
        input_search.set product
        search_button.click
    end
end