#!/usr/bin/env ruby
require 'terminal-notifier'

def current_charge
  /\d+%/.match(`pmset -g batt`).to_s.to_i
end

def plugged?
  (/Battery.Power/ =~ `pmset -g batt`).nil?
end

def notify subtitle, charge
  TerminalNotifier.notify "Battery at #{charge}%!", subtitle: subtitle, title: 'Battery Charge Watcher'
end

loop do
  charge = current_charge
  notify("Plug in charger!", charge) if charge < 41 and not plugged?
  notify("Unplug charger!", charge) if charge > 79 and plugged?
  sleep 60
end
