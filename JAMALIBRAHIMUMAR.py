#!/usr/bin/python3
print("Hey, Jamal here or not here😂'\n")

print("This is just a simple Bot that can tell you some things about me.")

print('Here are things the bot can tell you about me\n')

print("My Name, Age, Height & Weight.")
print("My Skin, Eyes, Teeth and Hair Colour.")
print("Where i'm from, Where i stay & Where i went to school.")
print("It can also tell you some of my hobbies.\n")

aboutMe = {"my_name": "JAMAL IBRAHIM UMAR",
           "my_age": 2021 - 1998,
           "my_height": 183,
           "my_weight": 67,
           "my_eyes": "BROWN",
           "my_teeth": "WHITE",
           "my_hair": "BLACK",
           "my_qualification": "Python Dev",
           }

print("p.s Just input a word corresponding to what you want to know")
print("Say you want to know my weight, just type weight")
print("My hobbies?, Just type hobbies")
print("My Skin or Eyes colour? Just type Skin or eyes.\n")


while True:
    try:
      Q1 = input("Let's go, What would you like to know?: ")

      if Q1 == "Name":
          print(f'My name is {aboutMe["my_name"]}.')

      elif Q1 == "age":
          print(f'I am {aboutMe["my_age"]} years old')

      elif Q1 == "height":
          print(f'I am {aboutMe["my_height"]} CM tall')

      elif Q1 == "weight":
          print(f'I am {aboutMe["my_weight"]} KG heavy')
          print("I know I'm not that heavy")

      elif Q1 == "others":
          print(f'I have {aboutMe["my_eyes"]} eyes and my hair is {aboutMe["my_hair"]}')
          print(f'My teeth are usually {aboutMe["my_teeth"]}.')
          print('And i Absolutely Love python')

      else:
         print("Ask this questions pythonicallly")

    except ValueError:
        print("Don't be a dumbass")
