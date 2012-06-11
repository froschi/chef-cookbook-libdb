packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libdb4.8
  /
when "precise"
  packages |= %w/
    libdb4.8
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
