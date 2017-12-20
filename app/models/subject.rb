class Subject < ApplicationRecord
  belongs_to :practitioners, optional: true

  has_many :questions

  TEMP_TIME    = self.find_by_title('Temporal Orientation to time')
  SPA_PLACE    = self.find_by_title('Spatial Orientation to place')
  REG          = self.find_by_title('Registration')
  ATT_CALC     = self.find_by_title('Attention and Calculation')
  REC          = self.find_by_title('Recall')
  LAN_NAME     = self.find_by_title('Language - Naming')
  LAN_REP      = self.find_by_title('Language - Repetition')
  LAN_COMPLEX  = self.find_by_title('Language - Follow complex command')
  LAN_CMD_ONE  = self.find_by_title('Language - Follow command 1')
  LAN_CMD_TWO  = self.find_by_title('Language - Follow command 2')
  LAN_COPY     = self.find_by_title('Language - Follow command and Copy')
  
end
