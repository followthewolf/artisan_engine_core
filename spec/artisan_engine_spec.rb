require 'spec_helper'

describe ArtisanEngine do
  describe "#root" do
    it "returns the ArtisanEngine gem's root path" do
      ArtisanEngine.root.should == Pathname.new( File.expand_path '../../../', __FILE__ )
    end
  end
end