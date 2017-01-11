class ApiKey < ApplicationRecord

  before_create :generate_guid

  private

  def generate_guid
    begin
      self.guid = SecureRandom.hex
    end while self.class.exists?(guid: guid)
  end

end
