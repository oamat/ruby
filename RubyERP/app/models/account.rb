class Account < ActiveRecord::Base
  belongs_to :client #listar cuentas por cliente

  before_save :encrypt_iban
  after_save :decrypt_iban
  before_update :encrypt_iban
  after_update :decrypt_iban
  after_find :decrypt_iban


  def encrypt_iban
    puts self.iban
    crypt = ActiveSupport::MessageEncryptor.new(Rails.application.secrets.secret_key_base)
    self.iban = crypt.encrypt_and_sign(self.iban)
    puts self.iban
  end


  def decrypt_iban
    puts self.iban
    crypt = ActiveSupport::MessageEncryptor.new(Rails.application.secrets.secret_key_base)
    self.iban = crypt.decrypt_and_verify(self.iban)
    puts self.iban
  end
end
