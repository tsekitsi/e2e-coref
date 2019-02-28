import os
import subprocess
list_of_paths = os.listdir("../WikiCoref/WikiCoref-CoNLL")
for i in range(len(list_of_paths)):
    list_of_paths[i] = "../WikiCoref/WikiCoref-CoNLL/" + list_of_paths[i]
print(str(list_of_paths).replace("[","").replace("]","").replace("'","").replace(",",""))
#subprocess.call("split_train-dev-test.sh " + str(list_of_paths).replace("[","").replace("]","").replace("'","").replace(",",""), shell=True)