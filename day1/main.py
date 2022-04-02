from tkinter import *
from tkinter import ttk


def setMessage(message):
    return message

root = Tk()
root.title("Python GUI Program")
root.minsize(width=800, height=600)



label = ttk.Label(text="Hello World", font=("Arial", 24, "bold"))
label.pack()
input = ttk.Entry()
input.pack()

def click():
    label["text"] = setMessage()

button = ttk.Button(text="Click!", width=10, command=click)
button.pack()






if __name__ == "__main__":
    root.mainloop()
