#
#  tlabel widget
#                               by Hidetoshi NAGAI (nagai@ai.kyutech.ac.jp)
#
require 'tk'
require 'tkextlib/tile.rb'

module Tk
  module Tile
    class TLabel < TkLabel
    end
  end
end

class Tk::Tile::TLabel < TkLabel
  include Tk::Tile::TileWidget

  if Tk::Tile::USE_TTK_NAMESPACE
    TkCommandNames = ['::ttk::label'.freeze].freeze
  else
    TkCommandNames = ['::tlabel'.freeze].freeze
  end
  WidgetClassName = 'TLabel'.freeze
  WidgetClassNames[WidgetClassName] = self
end
