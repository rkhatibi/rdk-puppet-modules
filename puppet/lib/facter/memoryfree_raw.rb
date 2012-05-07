# memoryfree_raw: same as memoryfree, but *always* in kB
#
Facter.add("memoryfree_raw") do
  confine :kernel => :linux
  setcode do
    size = 0
    File.readlines("/proc/meminfo").each do |l|
      size = $1.to_i if l =~ /^MemFree:\s+(\d+)/
      # MemoryFree == memfree + cached + buffers
      # no need for float since units don't change
      l =~ /^(?:Buffers|Cached):\s+(\d+)/
      size += $1.to_i
    end
    size
  end
end
