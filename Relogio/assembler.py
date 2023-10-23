import sys


argc = len(sys.argv) - 1 
argv = sys.argv[1:] 

if argc >= 1:
    file_name = argv[0]
    with open(file_name, 'r') as f:
        lines = f.readlines()
else:
    print("Enter a valid file name")
    exit(1)



mne = {"NOP":'0000',"LDA":"0001","SOMA":"0010","SUB":"0011","LDI":"0100","STA":"0101","JMP":"0110","JEQ":"0111","CEQ":"1000","JSR":"1001","RET":"1010","AND": "1011","CLT":"1100","JLT":"1101","ADDI":"1110","SUBI":"1111"}

# first pass

def removeComments(line):
    return line[0:line.find(';')] + '\n'

def readConst(line):
    elements = line.split(" ")
    for i, element in enumerate(elements):
        if '$' in element:
            numStr = element[1:]
            bin_num = bin(int(numStr))[2:].zfill(9)
            elements[i] = bin_num

    return " ".join(elements) + '\n'

def readAddr(line):
    elements = line.split(" ")
    for i, element in enumerate(elements):
        if '@' in element:
            numStr = element[1:]
            bin_num = bin(int(numStr))[2:].zfill(9)
            elements[i] = bin_num

    return " ".join(elements) + '\n'

            
def parseMnemonic(line):
    line = line.replace("\n", "")
    line = line.strip()
    line = line.split(' ')
    m = line[0]
    line[0] = mne[line[0]]
    if m == "NOP" or m == "RET":
        line = " ".join(line)+" "+'000000000'
    else:
        line = " ".join(line)
    return line

def readREG(line):
    index1 = line.find('REG')
    address = bin(int(line[index1+3]))[2:].zfill(2)
    line = line.replace('REG'+line[index1+3], address)
    return line



#first pass 
parsed_lines = []
labels = {}
l = 0
for i, line in enumerate(lines):
    stripped = line.strip()
    # Removing ; and comments
    if ';' in line:
        line = removeComments(line)

    #storing label definitions
    if ':' in line:
        label = line.split(':')[0]
        line = line.split(':')[1].strip() 
        labels[label] = bin(int(l))[2:].zfill(9) 

    #eliminating commas
    if ',' in line:
        line = line.replace(',', ' ')

    
    if '$' in line:
        line = readConst(line)

    if '@' in line:
        line = readAddr(line)

    if 'REG' in line:
        line = readREG(line)
    
    if len(line) > 1:
        line = parseMnemonic(line)
        line = readREG(line)
        parsed_lines.append(line)
        l+= 1

#second pass
for i, line in enumerate(parsed_lines):
    elements = line.split(' ')
    for j, e in enumerate(elements):
        e = e.strip()
        if e in labels.keys():
            elements[j] = str(labels[e])
    parsed_lines[i] = ' '.join(elements)
    parsed_lines[i] = parsed_lines[i].replace(" ","")


memory_width = 15
memory_depth = 512 

mif_header = f'''WIDTH={memory_width};
DEPTH={memory_depth};
ADDRESS_RADIX=DEC;
DATA_RADIX=BIN;
CONTENT BEGIN
'''

# Generate the footer for the .mif file
mif_footer = 'END;'

output_name = file_name[0:file_name.find('.')]+'.mif'
with open(output_name, 'w') as file:
    file.write(mif_header)
    for i, line in enumerate(parsed_lines):
        line = line+";\n"
        file.write(f'{i:03d} : {line}')
    file.write(mif_footer)
