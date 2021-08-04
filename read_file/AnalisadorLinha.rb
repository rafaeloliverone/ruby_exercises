class AnalisadorLinha 

    attr_accessor :indexLine, :arrayWords

    def initialize(indexLine, arrayWords)
        @indexLine = indexLine
        @arrayWords = arrayWords
    end

    def analise()
        puts "============ Linha #{@indexLine} =============="
        @arrayWords.each do |value| {}
            p "Palavra #{value[0]} - Frequência #{value[1]}"
        end
        puts "==================================="
        puts
    end
end