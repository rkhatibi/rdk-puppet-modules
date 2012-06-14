Facter.add("osfamily") do
  setcode do
    distid = Facter.value('lsbdistid')
    case distid
    when /RedHatEnterprise|CentOS|Fedora/
      "redhat"
    when "Ubuntu|Debian"
      "debian"
    else
      distid
    end
  end
end
