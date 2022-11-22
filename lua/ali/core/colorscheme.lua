local status, moonlight = pcall(require, "moonlight")
if not status then
  return
end

moonlight.set()
