class Tuistore < Formula
  desc "TUI app store — browse, search, and one-key-install terminal apps"
  homepage "https://github.com/Gheat1/tuistore"
  url "https://github.com/Gheat1/tuistore.git",
      tag:      "v0.4.3",
      revision: "f69f6e9a05747dfc31d1378edc8676675c31a03f"
  license "GPL-3.0-or-later"
  head "https://github.com/Gheat1/tuistore.git", branch: "main"

  depends_on "uv" => :build
  depends_on "python@3.12"

  def install
    python = formula_opt_bin("python@3.12")/"python3.12"
    system "uv", "venv", "--python", python, libexec
    system "uv", "pip", "install", "--python", libexec/"bin/python", "."
    bin.install_symlink libexec/"bin/tuistore"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tuistore --version")
  end
end
