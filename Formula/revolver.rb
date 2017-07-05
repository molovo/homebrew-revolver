class Revolver < Formula
  desc "Progress spinner for ZSH scripts"
  homepage "https://github.com/molovo/revolver"
  url "https://github.com/molovo/revolver/archive/v0.2.4.tar.gz"
  sha256 "1999fa96a89dbb8b052cd56a6a58df5b12125e43c562bebf22216549196eaca4"
  bottle :unneeded
  def install
    bin.install "revolver"
    zsh_completion.install "revolver.zsh-completion" => "_revolver"
  end
  test do
    assert_equal version.to_s, shell_output("#{bin}/revolver -v")
  end
end
