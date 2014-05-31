require 'bundler/setup'
require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start
require 'oktobertest'
require 'simple_gravatar'

scope 'SimpleGravatar#gravatar_url' do
  setup do
    @subject = Class.new do
      include SimpleGravatar
    end.new
    @email = 'some_email@gmail.com'
  end

  test 'digests the email' do
    url = @subject.gravatar_url @email
    assert url =~ /#{Digest::MD5.hexdigest(@email)}/
  end

  test 'replaces the default parameter' do
    url = @subject.gravatar_url @email, default: :mm
    assert url =~ /default=mm/
  end

  test 'replaces the forcedefault parameter' do
    url = @subject.gravatar_url @email, forcedefault: true
    assert url =~ /forcedefault=true/
  end

  test 'replaces the rating parameter' do
    url = @subject.gravatar_url @email, rating: :pg
    assert url =~ /rating=pg/
  end

  test 'replaces the secure parameter' do
    url = @subject.gravatar_url @email, secure: true
    assert url =~ /https:\/\/secure.gravatar.com\/avatar\//
  end

  test 'replaces the size parameter' do
    url = @subject.gravatar_url @email, size: 64
    assert url =~ /size=64/
  end
end
