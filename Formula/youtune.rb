class Youtune < Formula
  include Language::Python::Virtualenv

  desc "Smart YouTube → MP3 downloader with auto-tagging, album art, lyrics & Soulseek upgrades"
  homepage "https://github.com/jschof1/youtune"
  url "https://files.pythonhosted.org/packages/source/y/youtune/youtune-1.0.2.tar.gz"
  sha256 "07a4cf2b7be57ba436482aa928e2886bd993d53965176012cd83c7ad4ca67e32"
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
