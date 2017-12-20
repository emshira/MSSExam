class Subject < ApplicationRecord
  belongs_to :practitioner, optional: true

  has_many :questions

  TEMP_TIME    = 'Temporal Orientation to time'
  SPA_PLACE    = 'Spatial Orientation to place'
  REG          = 'Registration'
  ATT_CALC     = 'Attention and Calculation'
  REC          = 'Recall'
  LAN_NAME     = 'Language - Naming'
  LAN_REP      = 'Language - Repetition'
  LAN_COMPLEX  = 'Language - Follow complex command'
  LAN_CMD_ONE  = 'Language - Follow command 1'
  LAN_CMD_TWO  = 'Language - Follow command 2'
  LAN_COPY     = 'Language - Follow command and Copy'

  # magic Ruby metaprogramming will create methods of the form
  # def self.#{type_name}
  #   find_by title: #{type_value}
  # end
  (Subject.constants - ApplicationRecord.constants).each do |type|
    define_singleton_method type.downcase do
      find_by title: const_get(type)
    end
  end

end
