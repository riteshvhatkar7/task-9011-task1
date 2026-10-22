a = 100
b = 100

def calculateElectronicsGST(a, b):
    total = a + b
    gst = total * 18 / 100
    return total + gst

result = calculateElectronicsGST(a, b)
print(result)


c = 100
d = 100

def calculateFashionGST(c, d):
    total=c+d
    gst=total*13/100
    return total + gst

result=calculateFashionGST(c,d)
print(result)


e = 100

def calculateFoodGST(e):
    gst=e*7/100
    return gst+e

result=calculateFoodGST(e)
print(result)




a = 100
b = 100
c = 100
d = 100
e = 100

def totalBill(a, b, c, d, e):
    totalbill = calculateElectronicsGST(a, b) + calculateFashionGST(c, d) + calculateFoodGST(e)
    return totalbill

result = totalBill(a, b, c, d, e)
print(result)



def calculateDiscountedBill(a, b, c, d, e):
    total=totalBill(a, b, c, d, e)
    discount=total*20/100
    return total-discount
    
   
result=calculateDiscountedBill(a, b, c, d, e)
print(result)


print("Total after GST =", totalBill(a, b, c, d, e))
print("Discount =", totalBill(a, b, c, d, e) * 20 / 100)
print("Final payable amount =", calculateDiscountedBill(a, b, c, d, e))