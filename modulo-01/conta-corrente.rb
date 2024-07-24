class ContaCorrente
  attr_accessor :saldo

  def initialize(saldo)
    @saldo = saldo
  end

  def depositar(valor)
    if valor > 0
      @saldo += valor
      return "Depósito de R$#{valor} realizado com sucesso. Saldo atual: R$#{@saldo}."
    end

    'O valor de depósito deve ser positivo.'
  end

  def sacar(valor)
    if valor > 0
      return "Saldo insuficiente para sacar R$#{valor}. Saldo atual: R$#{@saldo}." if valor > @saldo

      if valor <= @saldo
        @saldo -= valor
        return "Saque de R$#{valor} realizado com sucesso. Saldo atual: R$#{@saldo}."
      end
    end

    'O valor de saque deve ser positivo.'
  end
end

conta = ContaCorrente.new(1000)
puts conta.depositar(500)
puts conta.sacar(200)
puts conta.sacar(2000)
puts conta.depositar(-100)
puts conta.sacar(-50)
