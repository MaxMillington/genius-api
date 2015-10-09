class User < ActiveRecord::Base

  def self.find_or_create_from_auth(data)

    user = User.find_or_create_by(
        provider: data.provider, uid: data.uid)

    user.name = data.info.name
    user.token = data.credentials.token
    user.image_url = data.extra.avatar.small.url

    user.save

    user

  end

end
