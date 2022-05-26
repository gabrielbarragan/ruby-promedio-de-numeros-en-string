if __FILE__ == $PROGRAM_NAME

    #num_average method

    def num_average(*strings)

        for i in 0..strings.length-1

            strings[i] = strings[i].split('-')
            header = strings[i].take_while {|num| num.start_with?('0') }[0]
            strings[i] = strings[i].delete_if {|element| element.start_with?('0')}
            strings[i] = strings[i].map{|num| num.to_f} 
            average = (strings[i].sum / 2.0).round(2)
            strings[i]=[]
            strings[i]= header.to_s + '-'+average.to_s

        end
        
        return strings
    end


    # Driver code
    p num_average('001-12.43-56.78', 
        '002-23.63-45.98', 
        '003-78.63-16.28') == [
                                "001-34.61", 
                                "002-34.81", 
                                "003-47.46"
                            ]

    p num_average('001-12.43-56.78', 
        '002-23.63-45.98', 
        '003-78.63-16.28',
        '004-81.54-17.30',
        '005-90.55-18.31',
        '007-91.56-18.56',
        '008-92.02-18.70',
        '009-93.09-19.60',
        '010-94.10-20.60') == [
                                "001-34.61", 
                                "002-34.81", 
                                "003-47.46", 
                                "004-49.42", 
                                "005-54.43", 
                                "007-55.06", 
                                "008-55.36", 
                                "009-56.35", 
                                "010-57.35"
                            ]

    p num_average('010-45.45-23.11') == ["010-34.28"]


end


 
