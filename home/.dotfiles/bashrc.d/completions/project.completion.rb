#!/usr/bin/env ruby
#
# From Ryan Bates dotfiles
# https://github.com/ryanb/dotfiles/
#

class ProjectCompletion
  def initialize(command)
    @command = command
  end

  def matches
    projects.select do |task|
      task[0, typed.length] == typed
    end
  end

  def typed
    @command[/\s(.+?)$/, 1] || ''
  end

  def projects
    Dir.chdir("#{Dir.home}/code")
    Dir['*/*/']
  end
end

puts ProjectCompletion.new(ENV["COMP_LINE"]).matches
exit 0
