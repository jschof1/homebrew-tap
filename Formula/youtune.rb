class Youtune < Formula
  include Language::Python::Virtualenv

  desc "Smart YouTube → MP3 downloader with auto-tagging, album art, lyrics & Soulseek upgrades"
  homepage "https://github.com/jschof1/youtune"
  url "https://files.pythonhosted.org/packages/d0/5d/c67e80d89c0a70e5cddc8fcaeae8baedb7d1d300b0d7af3575eb380424d9/youtune-1.0.0.tar.gz"
  sha256 "00b3f9aa1e5ba700ab5af46a2670008d0e81beac6bea7e3b3350830c02f2b091"
  license "MIT"
  head "https://github.com/jschof1/youtune.git", branch: "main"

  depends_on "python@3.12"
  depends_on "yt-dlp"
  depends_on "ffmpeg"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "youtune #{version}", shell_output("#{bin}/youtune --version")
  end
end
