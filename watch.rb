f = File.open("test.log","r")
f.seek(0,IO::SEEK_END)
while select([f]) do
  if line = f.gets
    l = NginxLog.new
    l.remote_addr, _ru, l.time_local, l.request, _status, l.body_bytes_sent, _hr, l.http_user_agent, l.request_time, l.upstream_response_time, _pipe  = line.scan /(?<=\[).+?(?=\])/
    l.save
  else
    sleep 1
  end
end
