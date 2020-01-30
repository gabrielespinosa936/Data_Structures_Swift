import UIKit

struct Device
{
    var type : String
    var price : Float
    var color : String
}

var imacPro = Device(type: "iMac Pro", price: 1700.00, color: "White")
var iPhone7 = Device(type: "imacPro", price: 1700.00, color: "black")
var iPhone8 = Device(type: "iPhone8", price: 1700.00, color: "grey")
var iPhone9 = Device(type: "iPhone9", price: 1700.00, color: "blue")
var appleTV = Device(type: "appleTV", price: 1700.00, color: "green")
var ipod = Device(type: "ipod", price: 1700.00, color: "red")

let myDevices = [imacPro,iPhone7,iPhone8,iPhone9,appleTV,ipod]

var myPhone : [Device] = []

for device in myDevices
{
    if device.type == "iPhone8"
    {
        myPhone.append(device)
    }
}

print(myPhone)

var newPhone = myDevices.filter({return $0.type == "appleTV"})
print(newPhone)
