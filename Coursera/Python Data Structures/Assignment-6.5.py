text = "X-DSPAM-Confidence:    0.8475";
s = text.find(' ')
newText = text[s:].strip()
n = float(newText)

print(n)
