-- Bazzite sound tweak: Adjust default sample rate and buffer sizes for crisp audio
alsa_monitor.rules = {
  {
    matches = {
      {
        { "node.name", "matches", "alsa_output.*" },
      },
    },
    apply_properties = {
      ["audio.format"] = "S32LE",
      ["audio.rate"] = 48000,
      ["api.alsa.period-size"] = 1024,
      ["api.alsa.headroom"] = 256,
    },
  },
}
