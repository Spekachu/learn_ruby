def ftoc(f)
    f = f.to_f
    c = (f-32.0)*(5.0/9.0)
end

def ctof(c)
    c = c.to_f
    f = (c*(9.0/5.0))+32.0
end