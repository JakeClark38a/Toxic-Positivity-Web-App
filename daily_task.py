import os
with open("deleted_record.txt","a") as f:
    obj = os.scandir("./excel-file")
    for file in obj:
        f.write(file.name+"\n")
        os.remove("./excel-file/"+file.name)
    obj.close()