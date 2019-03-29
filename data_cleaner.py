import re
import matplotlib.pyplot as plt

result = {'pos': [], 'mot': []}

scale = 10_000
reversed_log = []
with open(r'C:\Users\Florian\AppData\Roaming\.minecraft\logs\latest.log') as f:
    reversed_log = list(reversed(f.read().split('\n')))

line: str
for i, line in enumerate(reversed_log):
    if '[CHAT] <TheMrZZ> -' in line:
        print('yes')
        reversed_log = reversed_log[0:i]
        break

for line in reversed(reversed_log):
    match_pos = re.match(r'.+\[CHAT\] pos: (-?\d+) (-?\d+)', line)
    match_mot = re.match(r'.+\[CHAT\] mot: (-?\d+) (-?\d+)', line)

    if match_pos:
        result['pos'].append([int(i)/scale for i in match_pos.groups()])
    elif match_mot:
        result['mot'].append([int(i)/scale for i in match_mot.groups()])

plt.figure(1)

plt.subplot(211)
plt.plot([x for x, z in result['pos']])
plt.plot([z for x, z in result['pos']])
plt.legend(['Pos X', 'Pos Z'])

plt.subplot(212)
plt.plot([x for x, z in result['mot']])
plt.plot([z for x, z in result['mot']])
plt.plot([result['pos'][i][0] - result['pos'][i-1][0]
          for i in range(1, len(result['pos']))])
plt.plot([result['pos'][i][1] - result['pos'][i-1][1]
          for i in range(1, len(result['pos']))])
plt.plot([z for x, z in result['mot']])
plt.legend(['Motion X', 'Motion Z', 'Difference X', 'Difference Z'])


plt.xlabel('ticks')
plt.show()
