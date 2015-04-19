require "coreaudio"
require "logger"

audio = CoreAudio.default_input_device
buffer = audio.input_buffer(1024)


buffer.start
loop do
    $stdout.write buffer.read(1024)
end
buffer.stop