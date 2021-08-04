require_relative "AnalisadorLinha"

def most_common(string)
    words = string.downcase.tr(",.?!",'').split(' ')
    counts = words.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
    max_quantity = counts.values.max
    counts.select { |k, v| v == max_quantity }.keys
end


File.open("teams.txt") do |file|
    index = 0
    arrayWithAllLines = Array.new 

    for line in file.readlines()
        index += 1
        line_downcase = line.downcase.split()
        string_agrouped = line_downcase.group_by {|word| word}
        
        arrayWithSize = string_agrouped.map {|value, index| [value, index.size] }
        
        palavrasMaisAcessadas = most_common(line)
        
        arrayWithCommons = Array.new
        for word in palavrasMaisAcessadas
            arrayWithSize.each do |value|
                if value[0].eql? word
                    arrayWithCommons.push([value[0], value[1]])
                end
            end
        end

        arrayWithAllLines.push(AnalisadorLinha.new(index, arrayWithCommons))
    end

    arrayWithAllLines.each do |instanceAnalisadorLinha| {}
        instanceAnalisadorLinha.analise
    end
end
