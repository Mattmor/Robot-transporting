#!/usr/bin/env python
import rospy
from van_loading.msg import ICPDirection
from std_msgs.msg import Int8
import sys
import tty
import termios


def change_state():
    state = Int8()
    pub = rospy.Publisher('/van_loading/ICP_model_state', Int8, queue_size=10)
    rospy.init_node('change_state', anonymous=True)
    rate = rospy.Rate(10)
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    while not rospy.is_shutdown():
        try:
            tty.setraw(sys.stdin.fileno())
            key = sys.stdin.read(1)
        finally:
            termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)

        if key == 'w':
            state.data += 1
        if key == 's':
            state.data -= 1
        pub.publish(state)
        print("Current state: " + str(state.data) + "\n")

if __name__ == '__main__':
    try:
        change_state()
    except rospy.ROSInterruptException:
        pass