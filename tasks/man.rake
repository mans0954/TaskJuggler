# TASK MAN GENERATE

#require 'rake/clean'

CLOBBER.include "man/*.1"

desc 'Generate man pages'
task :man do
	ronn = %x{which ronn}
	ronn.chomp!
	%x{#{ronn} --roff --manual TaskJuggler man/*.ronn}
end

