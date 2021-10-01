require './caesar_cipher'

describe "#caesar_ciper" do
  context "returns the right ciper" do
    it "shift factor of 0" do
      expect(caesar_cipher("hello world", 0)).to eql("hello world")
    end

    it "small shift factor" do
      expect(caesar_cipher("hello world", 2)).to eql("jgnnq yqtnf")
    end

    it "lowcase and upcase" do
      expect(caesar_cipher("HeLlO wOrLd", 3)).to eql("KhOoR zRuOg")
    end

    it "non-letter characters" do
      expect(caesar_cipher("45681# @!#!$%", 15)).to eql("45681# @!#!$%")
    end

    it "big shift factor" do
      expect(caesar_cipher("What a string!", 57)).to eql("Bmfy f xywnsl!")
    end
    
    it "negative shift factor" do
      expect(caesar_cipher("What a string!", -21)).to eql("Bmfy f xywnsl!")
    end
  end
end


