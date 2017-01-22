device_01 = {name: "KrisMac", type: "laptop"}
device_02 = {name: "KrisYoga", type: "laptop"}
device_03 = {name: "KrisLinux", type: "laptop"}
device_04 = {name: "KrisDesktop", type: "desktop"}
device_05 = {name: "HomeServer", type: "server"}
device_06 = {name: "MediaStorage", type: "nas"}

to_be_upgraded = device_06[:name]
last_upgraded = device_01[:name]
puts "My next upgrade will be to #{to_be_upgraded}. Last upgraded device was #{last_upgraded}."