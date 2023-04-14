# git clone --depth 1 -b xlnx_rebase_v5.15_LTS_2022.2 https://github.com/Xilinx/linux-xlnx.git                              linux-xlnx-2022.2
# git clone --depth 1 -b v5.15.36                     git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git linux-5.15.36

linux_stable_path = "linux-5.15.36"
linux_xilinx_path = "linux-xlnx-2022.2"

diff_lines      = `diff -r -q #{linux_stable_path}/ #{linux_xilinx_path}/`
patch_file_name = "$PATCH_FILE"
a_path_name_max = 20
b_path_name_max = 20
path_diff_list  = Array.new

diff_lines.each_line do |line|
  line.chop()
  if (line =~ /\.git/) then
    next
  end
  if (line =~ /scripts\/dtc\/include-prefixes\//)
    next
  end
  if (line =~ /^Only in #{linux_xilinx_path}\/(.*):\s+(.*)$/) then
    a_path = "#{linux_stable_path}/#{$1}/#{$2} --label=/dev/null"
    b_path = "#{linux_xilinx_path}/#{$1}/#{$2}"
    path_diff_list.push([a_path,b_path])
    a_path_name_max = [a_path_name_max, a_path.length].max
    b_path_name_max = [b_path_name_max, b_path.length].max
    next;
  end
  if (line =~ /^Files\s+(\S+)\s+and\s+(\S+)\s+differ$/) then
    a_path = $1
    b_path = $2
    path_diff_list.push([a_path,b_path])
    a_path_name_max = [a_path_name_max, a_path.length].max
    b_path_name_max = [b_path_name_max, b_path.length].max
    next;
  end       
end

diff_command_format = sprintf("diff -urN %%-%ds %%-%ds >>%s \n", a_path_name_max, b_path_name_max, patch_file_name)
path_diff_list.each do |list|
  printf(diff_command_format, list[0], list[1])
end
