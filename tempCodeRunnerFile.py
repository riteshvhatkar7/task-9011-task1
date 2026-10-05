
# first program

print("1 st program")
print("Hello,my name is Ritesh");


# second program

print("2 program")

sp=500;
cp=600;


if sp> cp:
    profit = sp - cp;
    print("Profit:", profit);
else:
    loss = cp - sp;
    print("Loss:", loss);



# thired program

print("3 rd program")

num=int(input("enter your number here to check positive or negetive:"))

if num>=0:
    print("postive",num);
else:
    print("negetive",num)



# fourth program

    print("4 th program")


    age=int(input("enter you age number to check for eligible or not:"))

    if age>=18 and age<=150:
        print("you are eligible to vote");
    else :
        print("you are not eligible to vote");


# 5 program

    print("5 th program")

    word1 = input("Enter first word: ")
word2 = input("Enter second word: ")

if sorted(word1) == sorted(word2):
    print("Anagram")
else:
    print("Not Anagram")