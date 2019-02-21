require 'pry'

def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort {|x,y| y <=> x}
end

def sort_array_char_count(array)
    array = array.sort_by(&:length)
    #it's calling the method length on every item yielded 
    #by sort_by - exactly like the first line. 
    #The prefix & operator converts an object (specifically a 
    #Proc object or any object that has a to_proc method, which 
    #symbol objects do) to a block. In case of symbols that will 
    #be a block that calls the method with the given name on its 
    #argument (as that's how Symbol#to_proc is defined).
end

def swap_elements(array)
    array.insert(1, array.delete_at(2))
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each {|k| k[2] = "$"}
        #binding.pry
        #k[2] = "$"
        #k.insert(2, "$")
        #k[3,1]=""
    #end
end

def find_a(array)
    array.find_all do |k|
       k[0] == 'a' || k[0] == 'A'
    end
end

def sum_array(array)
    array.inject { |sum, n| sum + n } 
end

def add_s(array)
    array.collect do |k|
        array[1] ==  k ? k : k + "s"
    end
end