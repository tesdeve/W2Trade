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
class Product < ApplicationRecord
end
