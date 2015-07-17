# encoding: utf-8
require "mongoid"
require "mongoid/uuid/version"
require "mongoid/uuid/uuid"
require "mongoid/uuid/validator"

module Mongoid
  module Uuid
    extend ActiveSupport::Concern
    include Uuid

    def self.validate(uuid)
      uuid.class.to_s == 'BSON::Binary' and
        uuid.type == :uuid and
        validate_format(uuid.data)
    end

    # https://github.com/assaf/uuid/blob/27ae70845ff9f3be71060f473565aa7d1e6ed781/lib/uuid.rb#L199
    def self.validate_format(uuid)
      return true if uuid =~ /\A(urn:uuid:)?[\da-f]{8}-([\da-f]{4}-){3}[\da-f]{12}\z/i
    end
  end
end


ActiveModel::Validations.send(:include, Mongoid::Uuid::Validator)
