# author: Christoph Hartmann

require 'json'
require 'open-uri'

class LatestInSpecVersion
  # fetches the latest version from rubygems server
  def latest
    uri = URI('https://rubygems.org/api/v1/gems/inspec.json')
    inspec_info = JSON.parse(uri.read)
    inspec_info['version']
  rescue StandardError
    nil
  end
end
