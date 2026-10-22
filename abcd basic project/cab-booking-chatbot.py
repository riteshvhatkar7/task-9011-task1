
# import random

# while True:
#     print("\n===== CAB BOOKING CHATBOT =====")
#     print("1. Book Ride")
#     print("2. Exit")

#     choice = input("Enter your choice: ")

#     if choice == "1":

#         # Select cab
#         print("\n===== SELECT CAB =====")
#         print("1. Auto - Rs.12/km")
#         print("2. Sedan - Rs.18/km")
#         print("3. SUV - Rs.25/km")

#         cab_choice = input("Enter cab choice: ")

#         if cab_choice == "1":
#             cab_name = "Auto"
#             rate = 12
#         elif cab_choice == "2":
#             cab_name = "Sedan"
#             rate = 18
#         elif cab_choice == "3":
#             cab_name = "SUV"
#             rate = 25
#         else:
#             print("Invalid cab choice. Please try again.")
#             continue

#         # Select predefined route
#         print("\n===== SELECT ROUTE =====")
#         print("1. Pune Station to Shivajinagar - 5 km")
#         print("2. Swargate to Kothrud - 8 km")
#         print("3. Hinjawadi to Wakad - 10 km")

#         route = input("Enter route choice: ")

#         if route == "1":
#             source = "Pune Station"
#             destination = "Shivajinagar"
#             distance = 5
#         elif route == "2":
#             source = "Swargate"
#             destination = "Kothrud"
#             distance = 8
#         elif route == "3":
#             source = "Hinjawadi"
#             destination = "Wakad"
#             distance = 10
#         else:
#             print("Invalid route choice. Please try again.")
#             continue

#         # Calculate fare
#         fare = rate * distance

#         print("\n===== RIDE DETAILS =====")
#         print("Cab Type:", cab_name)
#         print("Source:", source)
#         print("Destination:", destination)
#         print("Distance:", distance, "km")
#         print("Rate: Rs.", rate, "per km")
#         print("Total Fare: Rs.", fare)

#                 # Confirm or cancel before OTP
#         print("\n===== CONFIRM BOOKING =====")
#         print("1. Confirm & Share OTP")
#         print("2. Cancel Ride")

#         confirm = input("Enter your choice: ")

#         if confirm == "1":
#             otp = random.randint(1000, 9999)
#             print("\nYour OTP is:", otp)
#             print("OTP shared successfully.")
#             print("Cancellation is not allowed after OTP sharing.")
#             print("Booking confirmed!")

#         elif confirm == "2":
#             print("Ride cancelled successfully.")
#             print("OTP not shared.")

#         else:
#             print("Invalid choice. OTP not shared.")

#     elif choice == "2":
#         print("Thank you for using Cab Booking Chatbot. Goodbye!")
#         break

#     else:
#         print("Invalid choice. Please try again.")

a='kiranacademy'

if(a=='a'):
    print