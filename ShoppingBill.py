a = 100
b = 100
c = 100
d = 100
e = 100

def calculateElectronicsGST(a, b):
    total = a + b
    gst = total * 18 / 100
    return total + gst

def calculateFashionGST(c, d):
    total = c + d
    gst = total * 13 / 100
    return total + gst

def calculateFoodGST(e):
    gst = e * 7 / 100
    return e + gst

def totalBill(a, b, c, d, e):
    totalbill = calculateElectronicsGST(a, b) + calculateFashionGST(c, d) + calculateFoodGST(e)
    return totalbill

def calculateDiscountedBill(a, b, c, d, e):
    total = totalBill(a, b, c, d, e)
    discount = total * 20 / 100
    return total - discount

print("Total after GST =", totalBill(a, b, c, d, e))
print("Discount =", totalBill(a, b, c, d, e) * 20 / 100)
print("Final payable amount =", calculateDiscountedBill(a, b, c, d, e))