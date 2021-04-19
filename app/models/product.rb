class Product < ApplicationRecord

  before_save :set_values
  before_save :set_impuesto
  before_save :set_seguro
  before_save :set_flete
  before_save :set_aduana
  before_save :set_total_envio_usd
  before_save :set_total_envio_cop
  before_save :set_action
  before_save :set_total_cost


  after_initialize :init

  def init
    self.exchange_rate = exchange_rate
    self.valor_usd  ||= ""
    self.peso ||= ""
    self.valor_maximo_cop ||= ""
  end

  def set_values
    self.valor_usd  ||= 0
    self.peso ||= 0
    self.valor_maximo_cop  ||= 0
  end 

  def set_valor_cop
    self.valor_cop = valor_usd * exchange_rate
  end 

  def set_impuesto
    self.impuesto = valor_usd * 0.3
  end

  def set_seguro
    self.seguro = 5
  end

  def set_flete
    self.flete = peso * 1.7
  end

  def set_aduana
    self.aduana = set_flete * 0.147
  end

  def set_total_envio_usd
    self.total_envio_usd = set_impuesto + set_seguro + set_flete + set_aduana
  end

  def set_total_envio_cop
    self.total_envio_cop = set_total_envio_usd * exchange_rate
  end


  def set_total_cost
    self.total_cost = set_total_envio_cop +  set_valor_cop
  end 
  #
  def set_action
    if set_total_cost <= valor_maximo_cop
      self.accion = "COMPRAR"
    else
      self.accion = "NO COMPRAR"
    end
  end

end



# == Schema Information
#
# Table name: products
#
#  id               :bigint           not null, primary key
#  action           :string
#  aduana           :decimal(, )
#  bought           :boolean
#  exchange_rate    :float
#  flete            :decimal(, )
#  impuesto         :decimal(, )
#  name             :string
#  peso             :float
#  seguro           :decimal(, )
#  total_cost       :decimal(, )
#  total_envio_cop  :decimal(, )
#  total_envio_usd  :decimal(, )
#  valor_cop        :decimal(, )
#  valor_maximo_cop :decimal(, )
#  valor_usd        :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
