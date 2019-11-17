require '../lib/transcriptionkit'

def welcome
	if ARGV.empty?
		puts "write source file, source format, and output file"
	else
		args = Hash[ ARGV.flat_map{|s| s.scan(/--?([^=\s]+)(?:=(\S+))?/) } ]
	    input = ARGV[0]
	    language = args["system"]
	    output = args["output"]
	    TranscriptionKit.convert("../lib/#{language}.yaml", input, output)
	end
end

welcome()