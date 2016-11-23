require 'require_all'
require_all "uploader"
class Test < ActiveRecord::Base
  require "geocoder"
  require "json"
  require "geocoder/railtie"
  require 'carrierwave'
  require 'carrierwave/orm/activerecord'
  mount_uploader :image, TestsUploader
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
end