import scipy.stats as stats
import math

# Custom function to get SMD from p_value and degrees of freedom.
def calculate_smd(p_val, df1, df2):
    t = stats.t.ppf(1 - p_val/2, df1 + df2)
    smd = t * math.sqrt((df1 + df2) / (df1 * df2))
    return smd

calculate_smd(0.05, 30, 30)
