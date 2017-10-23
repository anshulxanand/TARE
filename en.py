import re
import glob , os 

numbers = re.compile(r'(\d+)')
def numericalSort(value):
    parts = numbers.split(value)
    parts[1::2] = map(int, parts[1::2])
    return parts


output = []
count = 0 
i_active = 2.5
v = 3 
i_lpm = 0.0018
i_tx = 18.8
i_rx = 17.4
rime_arch_second = 32768
out = open('/home/user/Desktop/Energy/PROPOSED_32/out2.txt', 'w')
print >> out , 'CPU' , 'LPM' , 'TX' , 'RX' , 'TOTAL'

infile = '/home/user/Desktop/Energy/PROPOSED_32/Logs/energest2.txt';
with open(infile) as f:
    overall_energy = 0 
    total_cpu_energy = 0 
    total_lpm_energy = 0 
    total_tx_energy = 0 
    total_rx_energy = 0 
    total_overall_energy = 0 
    for line in f:
        splitted = line.split()
        cpu = float(splitted[7])
        lpm = float(splitted[9])
        tx  = float(splitted[11])
        rx  = float(splitted[13])
        count = count + 1 
    
        cpu_energy = cpu*i_active*v
        cpu_energy = cpu_energy/rime_arch_second
        
        total_cpu_energy = total_cpu_energy + cpu_energy 
        
        lpm_energy = lpm*i_lpm*v
        lpm_energy = lpm_energy/rime_arch_second
        
        total_lpm_energy = total_lpm_energy + lpm_energy 
        
        tx_energy = tx*i_tx*v 
        tx_energy = tx_energy/rime_arch_second
        
        total_tx_energy =total_tx_energy + tx_energy
        
        rx_energy = rx*i_rx*v
        rx_energy = rx_energy/rime_arch_second
        
        total_rx_energy = total_rx_energy + rx_energy
        
        overall_energy  = cpu_energy + lpm_energy + tx_energy + rx_energy
        total_overall_energy = total_overall_energy + overall_energy
        output.append((cpu_energy,lpm_energy,tx_energy,rx_energy,overall_energy))
        print >> out , splitted[1], cpu_energy,lpm_energy,tx_energy,rx_energy,overall_energy 

f.close()
print >> out , total_cpu_energy , total_lpm_energy , total_tx_energy , total_rx_energy , total_overall_energy
out.close()
