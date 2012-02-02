template_snippet "/etc/foo.d/test" do
  glob "*"
  concatenate_into "/etc/foo.conf"
end
