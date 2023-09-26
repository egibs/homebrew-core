class Gpp < Formula
  desc "General-purpose preprocessor with customizable syntax"
  homepage "https://logological.org/gpp"
  url "https://files.nothingisreal.com/software/gpp/gpp-2.28.tar.bz2"
  sha256 "343d33d562e2492ca9b51ff2cc4b06968a17a85fdc59d5d4e78eed3b1d854b70"
  license "GPL-3.0"

  livecheck do
    url "https://github.com/logological/gpp.git"
  end

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "746aea08bdba427094f11b0ea24eaf8794860d18a10b6e5ca73bf961d51c2e6a"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "37210d847eafe6cca690ffce819b5d7b7f2fdaf4224dbf6469518ba54a722b28"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "6ba62bc595cda191e4a27c907f7fafc6fc29b97a7c365e903345f574cabb85a2"
    sha256 cellar: :any_skip_relocation, sonoma:         "9a24d307bb2b2049a7ff1c354441a3426ded7ffb8a01520d44c20d8a3487b35e"
    sha256 cellar: :any_skip_relocation, ventura:        "0551516a9669a23146b86cf17b91af27e2669eeee3504b3bb697ea648064bd79"
    sha256 cellar: :any_skip_relocation, monterey:       "623ba506ceb4d72212afe1cc148ed5f9c4220fa9a387a73a85b3c850f6bf514f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "be597ec6ac79fcb2df75a6dcf090a1f888cfff801f4da2c154105bf36ca0acd0"
  end

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--mandir=#{man}"
    system "make"
    system "make", "check"
    system "make", "install"
  end

  test do
    system "#{bin}/gpp", "--version"
  end
end
