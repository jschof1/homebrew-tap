class Youtune < Formula
  include Language::Python::Virtualenv

  desc "Smart YouTube → MP3 downloader with auto-tagging, album art, lyrics & Soulseek upgrades"
  homepage "https://github.com/jschof1/youtune"
  url "https://files.pythonhosted.org/packages/source/y/youtune/youtune-1.0.1.tar.gz"
  sha256 "c30ccbed86b9d18dbc6ea8ae6971500177b0c5fe1ebfb024fe3f09d74b30d14d"
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
