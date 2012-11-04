require 'spec_helper'

include SimpleGravatar

describe SimpleGravatar do
  describe SimpleGravatar::VERSION do
    it 'should be defined' do
      SimpleGravatar::VERSION.wont_be_nil
    end
  end

  describe :gravatar_url do

    let(:email) { 'some_email@gmail.com' }

    it 'should digest the email' do
      url = gravatar_url email
      url.must_match Digest::MD5.hexdigest(email)
    end

    describe 'when overriding the default parameter' do
      it 'should be replaced' do
        url = gravatar_url email, default: :mm
        url.must_match 'default=mm'
      end
    end

    describe 'when overriding the forcedefault parameter' do
      it 'should be replaced' do
        url = gravatar_url email, forcedefault: true
        url.must_match 'forcedefault=true'
      end
    end

    describe 'when overriding the rating parameter' do
      it 'should be replaced' do
        url = gravatar_url email, rating: :pg
        url.must_match 'rating=pg'
      end
    end

    describe 'when overriding the secure parameter' do
      it 'should be replaced' do
        url = gravatar_url email, secure: true
        url.must_match 'https://secure.gravatar.com/avatar/'
      end
    end

    describe 'when overriding the size parameter' do
      it 'should be replaced' do
        url = gravatar_url email, size: 64
        url.must_match 'size=64'
      end
    end
  end
end
