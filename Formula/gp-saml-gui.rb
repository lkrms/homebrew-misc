class GpSamlGui < Formula
  include Language::Python::Virtualenv

  desc "Interactively authenticate to GlobalProtect VPNs that require SAML"
  homepage "https://github.com/dlenski/gp-saml-gui"
  url "https://github.com/lkrms/gp-saml-gui/archive/70b6cb34ed16952fa48fe5c203c292df1b71629c.tar.gz"
  version "20220915"
  sha256 "f01fe30e739c27f8d4b7935daf94a1c8dd73bde31df06c471bcbb363e05a5418"
  license "GPL-3.0-or-later"
  head "https://github.com/lkrms/gp-saml-gui.git"

  depends_on "python@3.10"

  # To update:
  #
  #     cd "$(mktemp -d)" &&
  #         python3 -m venv venv &&
  #         . venv/bin/activate &&
  #         pip install pywebview requests homebrew-pypi-poet &&
  #         poet pywebview -a requests &&
  #         deactivate &&
  #         rm -Rf venv
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/ca/48/88ec470f8b68319b6782ca3a0570789886ad5ca24c1af2f3771699135baa/certifi-2022.9.14.tar.gz"
    sha256 "36973885b9542e6bd01dea287b2b4b3b21236307c56324fcc3f1160f2d655ed5"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/a1/34/44964211e5410b051e4b8d2869c470ae8a68ae274953b1c7de6d98bbcf94/charset-normalizer-2.1.1.tar.gz"
    sha256 "5a3d016c7c547f69d6f81fb0db9449ce888b418b5b9952cc5e6e66843e9dd845"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/8b/e1/43beb3d38dba6cb420cefa297822eac205a277ab43e5ba5d5c46faf96438/idna-3.4.tar.gz"
    sha256 "814f528e8dead7d329833b91c5faa87d60bf71824cd12a7530b5526063d02cb4"
  end

  resource "proxy_tools" do
    url "https://files.pythonhosted.org/packages/f2/cf/77d3e19b7fabd03895caca7857ef51e4c409e0ca6b37ee6e9f7daa50b642/proxy_tools-0.1.0.tar.gz"
    sha256 "ccb3751f529c047e2d8a58440d86b205303cf0fe8146f784d1cbcd94f0a28010"
  end

  resource "pyobjc-core" do
    url "https://files.pythonhosted.org/packages/e3/92/156bde8b56021182ab146d1fb8c5a53595876d123e6f6d58f9826a1adc78/pyobjc-core-8.5.tar.gz"
    sha256 "704c275439856c0d1287469f0d589a7d808d48b754a93d9ce5415d4eaf06d576"
  end

  resource "pyobjc-framework-Cocoa" do
    url "https://files.pythonhosted.org/packages/9c/0f/cbdc25505c08c76f2b96128e45b766180d44c05a3bee47d784dc36a49b7e/pyobjc-framework-Cocoa-8.5.tar.gz"
    sha256 "569bd3a020f64b536fb2d1c085b37553e50558c9f907e08b73ffc16ae68e1861"
  end

  resource "pyobjc-framework-WebKit" do
    url "https://files.pythonhosted.org/packages/46/0b/b41f7fe8dfed9adc4534a01b7c76c11787033df9654d02e1b7233710cdfa/pyobjc-framework-WebKit-8.5.tar.gz"
    sha256 "b9c6d654be8a9be56abf72219b53ec40255ff77dcb610ab31d546632cccd740d"
  end

  resource "pywebview" do
    url "https://files.pythonhosted.org/packages/e9/c8/3af09c7ca1799e83128780e44b21100079c34c2130edeb3238eb35ef50f0/pywebview-3.6.3.tar.gz"
    sha256 "edc82f0ce79f6514411c32f7057b2d5f99f1e9f6b15a373c3c1bf403b327b093"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/a5/61/a867851fd5ab77277495a8709ddda0861b28163c4613b011bc00228cc724/requests-2.28.1.tar.gz"
    sha256 "7c5599b102feddaa661c826c56ab4fee28bfd17f5abca1ebbe3e7f19d7c97983"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/b2/56/d87d6d3c4121c0bcec116919350ca05dc3afd2eeb7dc88d07e8083f8ea94/urllib3-1.26.12.tar.gz"
    sha256 "3fa96cf423e6987997fc326ae8df396db2a8b7c667747d47ddd8ecba91f4a74e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/gp-saml-gui", "--help"
  end
end
