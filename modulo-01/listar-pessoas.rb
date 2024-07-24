class Pessoa
    attr_accessor :nome, :email
  
    def initialize(nome, email)
      @nome = nome
      @email = email
    end
  
    def full_information
      "Nome: #{@nome}, Email: #{@email}"
    end
  end
  
  class Funcionario < Pessoa
    attr_accessor :cargo
  
    def initialize(nome, email, cargo)
      super(nome, email)
      @cargo = cargo
    end
  
    def full_information
      super + ", Cargo: #{cargo}"
    end
  end
  
  pessoas = [
    Funcionario.new('Mateus', 'mateus@email.com', 'Desenvolvedor'),
    Pessoa.new('Ana', 'ana@email.com'),
    Pessoa.new('Carlos', 'carlos@email.com'),
    Pessoa.new('João', 'joao@email.com'),
    Funcionario.new('Pedro', 'pedro@email.com', 'Gerente'),
    Pessoa.new('Lucia', 'lucia@email.com'),
    Funcionario.new('Renato', 'renato@email.com', 'Designer'),
    Pessoa.new('Fernanda', 'fernanda@email.com'),
    Pessoa.new('Roberto', 'roberto@email.com'),
    Pessoa.new('Juliana', 'juliana@email.com')
  ]
  
  pessoas.each do |pessoa|
    puts pessoa.full_information
  end
  