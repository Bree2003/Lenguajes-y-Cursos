# 1. Create a program to calculate the area and circumference of a circle. Ask the user for the radius
# Consider using the round function

import math

radius = float(input("Insert a radius: "))
area = math.pi * radius * radius
circumference = 2 * math.pi * radius

print("The area is", area, "the circunference is", circumference)

# 2. Create a program that asks the user for his birthday in the format DD-MM-YYYY. Then print: "You were born in [month]"

months = ("January", "February", "March", "April", "May", "June",
          "July", "August", "September", "October", "November", "December")
birthday = input("Enter your birthday (DD-MM-YYYY): ")
birthdayMonth = int(birthday[3:5])
print("You were born in", months[birthdayMonth - 1])

# 3. Create a program with a predefined list of people. Ask the user for his name, add it to the end of the list and print the updated list.

people = ["Juana", "Pedro", "Catalina"]
print(people)
name = input("Introduce your name: ")
people.append(name)
print(people)

# 4. Create a program with a predefined dictionary for a person. Include the following information: name, gender, age, address and phone
# Ask the user what information he wants to know about the person, then print the value associated to that key or display a message in case the key is not found.

person = {"name": "Brisa", "age": 22, "gender": "female",
          "address": "Moises", "phone": "+569"}
print("Please write in the field under the information you are interested to know: name, gender, age, address, phone")
info = input("Enter the info you want to see from the person")
print(person[info])


