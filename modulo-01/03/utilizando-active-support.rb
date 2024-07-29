require 'bundler/setup'

class String
  def word_count
    self.split(/\s+/).size
  end
end

example_string = 'Este é um exemplo de string para contar palavras.'
puts "A string '#{example_string}' tem #{example_string.word_count} palavras."
