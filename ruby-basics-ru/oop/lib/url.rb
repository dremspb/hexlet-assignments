require 'uri'
require 'forwardable'


class Url
  extend Forwardable

  def initialize(url_string)
    @uri = URI.parse(url_string)
  end

  def_delegators :@uri, :scheme, :host, :port

  def query_params
    query = URI.decode_www_form(@uri.query)
    Hash[query]
  end

  def query_param(key, default_value = nil)
    query_params[key.to_s] || default_value
  end

  def ==(other)
    other.is_a?(Url) &&
      scheme == other.scheme &&
      host == other.host &&
      port == other.port &&
      query_params.sort == other.query_params.sort
  end
end

yandex_url = Url.new('http://yandex.ru?key=value&key2=value2')
puts yandex_url.host #=> yandex.ru
puts yandex_url.scheme #=> http
puts yandex_url.query_params #=> {"key"=>"value", "key2"=>"value2"}
puts yandex_url.query_param(:key) #=> "value"
puts yandex_url.query_param(:key2, 'lala') #=> "value2"
puts yandex_url.query_param(:new, 'ehu') #=> "ehu"
puts yandex_url.query_param(:lalala) #=> nil
puts yandex_url.query_param(:lalala, 'default') #=> "default"

google_url = Url.new('https://google.com:80?a=b&c=d&lala=value')
puts yandex_url == google_url #=> false

yandex_url_same = Url.new('http://yandex.ru?key2=value2&key=value')
puts yandex_url == yandex_url_same #=> true
