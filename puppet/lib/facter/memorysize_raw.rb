# memorysize_raw: same as memorysize, but *always* in kB

Facter.add("memorysize_raw") do
  confine :kernel => :linux
  setcode do
    size = 0
    File.readlines("/proc/meminfo").each do |l|
      # no float since we're not changing units
      size = $1.to_i if l =~ /^MemTotal:\s+(\d+)/
    end
    size
  end
end
