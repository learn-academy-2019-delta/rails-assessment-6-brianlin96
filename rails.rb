# ASSESSMENT 5: INTRO TO RAILS
# Coding practical questions

# 1. Create a method called hello_world that takes a language code (e.g. "es", "de", "ru", "ja") as an argument and returns the appropriate version of "Hello, World" for the given language. The default should be English. Test your code with THREE method calls. Expected output for hello_world 'es': 'Hola Mundo', hello_world 'de': 'Hallo Welt'
def hello_world str
    return (str=="es") ? "Hola Mundo" : (str=="de") ? "Hallo Welt" : (str=="ru") ? "Привет, мир" : (str=="ja") ? "Kon'nichiwa sekai": "Hello World"
end 
p hello_world "de"
p hello_world "ja"
p hello_world " "

# 2a. Create a method called assign_grade that takes a number as an argument and returns the corresponding letter grade. Test your code with THREE method calls. Expected output for assign_grade 96: 'A', assign_grade 75: 'C'
def assign_grade num
    return num>89 ? "A": num>79 ? "B": num>69 ? "C":num>59 ? "D": "F"
end
p assign_grade 96
p assign_grade 75
p assign_grade 20

# 2b. STRETCH: Create exceptions to your method if the number passed is less than 0 or greater than 100. Copy and paste the original code below to add the exceptions.
def assign_grade2 num
    return num>100 ? "A+": num<0 ? "you have no hope":num>89 ? "A": num>79 ? "B": num>69 ? "C":num>59 ? "D": "F"
end
p assign_grade2 105
p assign_grade2 75
p assign_grade2 -15

# 3a. Create a method called pluralizer that takes 2 arguments - a singular noun and a number - and returns the number and the pluralized form of the noun, if necessary. Test your code with THREE method calls. Expected output of pluralizer(5, cat): '5 cats', expected output of pluralizer(1, dog): '1 dog'
def pluralizer num, str
    num.abs == 1 ? "#{num} #{str}":"#{num} #{str}s"
end
p pluralizer 5,"cat"
p pluralizer 1,"cat"

# 3b. STRETCH: Pick three nouns with irregular pluarlization like sheep, goose/geese, child/children, person/people, crossroads, pants and add the exceptions to your code. Copy and paste the original code below to add the exceptions.
def pluralizer num, str
    num.abs == 1 ? "#{num} #{str}":str.downcase=="sheep" ? "#{num} #{str}":str.downcase=="goose" ? "#{num} geese":str.downcase=="person" ? "#{num} people":"#{num} #{str}s"
end
p pluralizer 5,"cat"
p pluralizer 2,"person"
p pluralizer 6,"goose"
p pluralizer 6,"sheep"