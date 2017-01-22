class Devices

	def set_name=(name)
		@name=name
	end

	def get_name
		return @name
	end

	def set_manufacturer=(manufacturer)
		@manufacturer=manufacturer
	end

	def get_manufacturer
		return @manufacturer
	end

	def set_os=(os)
		@os = os
	end

	def get_os
		return @os
	end

end

class Computer < Devices

	def set_type=(type)
		@type=type
	end

	def get_type
		return @type
	end

end

class Server < Devices

	def set_procs=(num_procs)
		@procs = num_procs
	end

	def get_procs
		return @procs
	end

	def set_ram=(ram)
		@ram = ram
	end

	def get_ram
		return @ram
	end

	def set_role=(role)
		@role = role
	end

	def get_role
		return @role
	end

	def server_req
		return "For the #{@role}, we need #{@procs} cores & #{@ram} of RAM. Please name #{@name}, install #{@os} and use #{@manufacturer} hardware."
	end

end

class Storage < Devices

	def set_size=(size)
		@size=size
	end

	def get_size
		return @size
	end

end

my_server = Server.new
my_server.set_name = "HOMEDC01"
my_server.set_manufacturer = "Cisco"
my_server.set_procs = "2"
my_server.set_ram = "8GB"
my_server.set_os = "Windows Server 2012R2"
my_server.set_role = "Domain Controller"

puts my_server.server_req
puts my_server.inspect