$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'rspec/expectations'
require 'page-object'
require 'require_all'
require 'fig_newton'
require 'data_magic'

require_all 'lib'

World(PageObject::PageFactory)

PageObject::PageFactory.routes = {
  default: [[QuotePage, :quote_form]]
}
