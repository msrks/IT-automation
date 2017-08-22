# coding: utf-8
"""
192.168.11.161を踏み台にして192.168.162-164にアクセス
"""
from fabric.api import run
from fabric.api import env

env.hosts = ["192.168.11.162",
             "192.168.11.163",
             "192.168.11.164"]
env.user = "pi"
env.password = "raspberry"
env.gateway = "192.168.11.161"

def go_fab():
    run("ifconfig wlan0")
    run("ls")
    #run("git pull")

#def hello(name="world"):
#    print("Hello %s!" % name)
