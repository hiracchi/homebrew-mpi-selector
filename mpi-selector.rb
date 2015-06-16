# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class MpiSelector < Formula
  desc ""
  homepage "https://www.openfabrics.org/"
  url "http://downloads.openfabrics.org/downloads/mpi-selector/mpi-selector-1.0.3.tar.gz"
  version "1.0.3"
  sha256 "17f8737e088dd83d786dea3ca98e93c944d3415ac649cbac38ff5b00c8ed78da"

  # depends_on "cmake" => :build
  depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system "./configure", "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make"
    system "make", "install" # if this fails, try separate make/make install steps
  end

end
