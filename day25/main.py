import csv
import pandas as pd
import numpy as np


if __name__ == "__main__":
    df = pd.read_csv("./weather_data.csv")
    df.temp = df.temp * 1.8 + 32 

    
