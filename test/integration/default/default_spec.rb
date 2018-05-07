
# make sure systemd is running on PID 1
describe command('ps -1 | grep systemd') do
  its('exit_status') { should eq 0 }
end
