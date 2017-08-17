def solution(string)
    string.gsub(/[[:lower:]][[:upper:]]/).each { |s|
        s.gsub(/(\w)(\w)/, '\1 \2')
    }
end

solution('camelCasing')
solution('camelCasingTool')

# Best practice
# def solution(string)
#   string.gsub /([A-Z])/, ' \1'
# end