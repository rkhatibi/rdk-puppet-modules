# for some reason facter takes the raw memorysize and reports it as
# a formatted string, which is useless for calculation
#

Facter.add("memoryfree_raw") do
    confine :kernel => :linux
    setcode do
        size = 0
        File.readlines("/proc/meminfo").each do |l|
            size = $1.to_f if l =~ /^MemFree:\s+(\d+)/
        end
    size
    end
end
