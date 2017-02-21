class User < ApplicationRecord
  def self.find_or_create_from_auth_hash(auth_hash)
    provider = auth_hash.provider
    uid = auth_hash.uid
    name = auth_hash.info.name
    oauth_token = auth_hash.credentials.token
    oauth_expires_at = Time.at(auth_hash.credentials.expires_at)
    User.find_or_create_by(provider: provider, uid: uid) do |user|
      user.name = name
      user.oauth_token = oauth_token
      user.oauth_expires_at = oauth_expires_at
    end
  end
end
