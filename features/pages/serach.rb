class Search < SitePrism::Page
    elements :checkbox_compare, '.nm-compare-product'
    element :button_compare, '.nm-btn-compare'
    element :msg_erro, '.nm-alert-compare'

    def  select_many_procduct(qty)
        i=0
        qty.times do
            checkbox_compare[i].click
            i += 1
        end
    end

    def compare_product
        button_compare.click
    end

end