hasend() {
  echo $@ | socat unix-connect:/var/lib/haproxy/stats stdio
}
