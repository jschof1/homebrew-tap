class Youtune < Formula
  include Language::Python::Virtualenv

  desc "Smart YouTube → MP3 downloader with auto-tagging, album art, lyrics & Soulseek upgrades"
  homepage "https://github.com/jschof1/youtune"
  url "https://files.pythonhosted.org/packages/source/y/youtune/youtune-1.1.3.tar.gz"
  sha256 "754a7563fdfe4eac010e8120c338119d6902c84d221c5262b5bdd66a04f41e43"
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
