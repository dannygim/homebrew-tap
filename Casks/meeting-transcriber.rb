cask "meeting-transcriber" do
  version "0.2.0"
  sha256 "1c7fef10e53f561b22722a3336c56cfa4b9d9cf7f6d8a464c32b55582d73b40d"

  url "https://github.com/dannygim/meeting-transcriber/releases/download/v#{version}/meeting-transcriber_#{version}_darwin_arm64.zip"
  name "Meeting Transcriber"
  desc "On-device meeting audio transcription app powered by whisper.cpp"
  homepage "https://github.com/dannygim/meeting-transcriber"

  depends_on formula: "portaudio"
  depends_on formula: "whisper-cpp"

  app "meeting-transcriber.app"

  caveats <<~EOS
    You need to download a Whisper model:
      mkdir -p ~/models && curl -Lo ~/models/ggml-large-v3.bin https://huggingface.co/ggerganov/whisper.cpp/resolve/main/ggml-large-v3.bin

    Since this app is unsigned, you may need to allow it in:
      System Preferences > Security & Privacy
  EOS

  uninstall quit: "com.dannygim.meeting-transcriber"
end
