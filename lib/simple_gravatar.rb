require 'simple_gravatar/version'

module SimpleGravatar
  DEFAULT_OPTIONS = {
    default: nil,
    forcedefault: false,
    rating: :g,
    secure: false,
    size: 48
  }

  def gravatar_url(email, options = {})
    options = options.reverse_merge(DEFAULT_OPTIONS)
    secure = options[:secure]
    options.delete(:secure)

    unless options[:forcedefault]
      options.delete(:forcedefault)
    end

    gravatar_id = Digest::MD5.hexdigest(email.downcase)

    params = options.collect { |k, v| "#{k}=#{v}" }.join('&')

    url = if secure
      "https://secure.gravatar.com/avatar"
    else
      "http://gravatar.com/avatar"
    end

    "#{url}/#{gravatar_id}.png?#{params}"
  end
end

ActionView::Base.send(:include, SimpleGravatar) if defined? ActionView::Base
