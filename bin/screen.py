import subprocess
import sys

def first_only(outputs):
    subprocess.Popen(['xrandr', '--output', outputs[0], '--auto', '--output', outputs[1], '--off'])

def second_only(outputs):
    outputs.reverse()
    first_only(outputs)

def double_display(outputs, cmd):
    subprocess.Popen(['xrandr', '--output', outputs[0], '--auto', '--output', outputs[1], '--auto', cmd, outputs[0]])

def same_as(outputs):
    double_display(outputs, '--same-as')

def right_of(outputs):
    double_display(outputs, '--right-of')

def left_of(outputs):
    double_display(outputs, '--left-of')

xrandr_output = subprocess.Popen(['xrandr'], stdout=subprocess.PIPE).communicate()
xrandr_output = xrandr_output[0].decode('utf-8').split('\n')
outputs = [x.split()[0] for x in xrandr_output if ' connected' in x]

command = sys.argv[1]

opts = {'first-only' : first_only,
        'second-only' : second_only,
        'duplicate' : same_as,
        'right-of' : right_of,
        'left-of' : left_of,
}
assert len(outputs) == 2

opts[command](outputs)
