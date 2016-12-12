import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.use('Agg')
import matplotlib.pyplot as plt
import re
import nipy

imports = ["pandas as pd", "numpy as np", "matplotlib.pyplot as plt", "re", "nipy"]

for item in imports:
    print("loaded:%s" % item)

