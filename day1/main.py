from tkinter import *
from tkinter import ttk
from conversion import from_miles_km, print_kms


def setMessage(message):
    return message

root = Tk()
root.title("Python GUI Program")
root.minsize(width=800, height=600)



label = ttk.Label(text="Miles to Km Converter", font=("Arial", 24, "bold"))
label.pack()

label2 = ttk.Label(text="Miles to Km Converter", font=("Arial", 18, "bold"))
label2.pack(side="left")

inputMiles = ttk.Entry( width=20)
inputMiles.pack(side="left")




miles = inputMiles.get()


label3 = ttk.Label(text=f"Kms are:  ", font=("Arial", 18, "bold"))
label3.pack(side="bottom")
def convert():
    label3['text'] = print_kms(from_miles_km(float(inputMiles.get())), float(inputMiles.get()))



ttk.Button(text="Convert", command=convert).pack(side="left")

if __name__ == "__main__":
    root.mainloop()
