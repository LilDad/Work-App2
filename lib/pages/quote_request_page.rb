class QuotePage
  include PageObject
  include DataMagic

  page_url('https://www.thesiswritingservice.com/services/')

  select_list(:subtype, id: 'subtype')

  # def checkout(data = {})
  #   populate_page_with data_for(:checkout_page, data)
  #   place_order
  # end

  def subtype_options
    subtype_element.options.collect(&:text)
  end
end
