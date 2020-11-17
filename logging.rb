require 'logger'
# This is a time based log.
# 1st parameter - where do you wanna save logs
# 2nd parameter - the time period for which the log will be stored in this file
$TIME_LOG = Logger.new('time_based.log', 'monthly')

# This is a memory based log. 
# Starts overwriting the file(s) once limit is reach
# 1st parameter - where do you wanna save logs
# 2nd parameter - how many files do you wanna use?
# 3rd parameter - size of file (in bytes) 
$MEMORY_LOG = Logger.new('memory_based.log', 0, 256)

# Log formatting can be done as below
$MEMORY_LOG.formatter = proc { |severity, datetime, progname, msg| "Severity: #{severity}, Datetime : #{datetime}, Message : #{msg}\n" }

# Top to bottom - Less Severe to More Severe
# DEBUG
# INFO
# WARN
# ERROR
# FATAL
# UNKNOWN

def test_logging
	$MEMORY_LOG.debug "Test Memory Log : DEBUG"
	$TIME_LOG.debug "Test Time Log : DEBUG"
	$MEMORY_LOG.error "Test Memory Log : ERROR"
	$TIME_LOG.error "Test Time Log : ERROR" 
end

if __FILE__ == $0
	$TIME_LOG.level = Logger::ERROR
	$MEMORY_LOG.level = Logger::DEBUG
	# Time based log file will have only ERROR logs
	# Memory based log file will have both DEBUG & ERROR logs
	test_logging
end