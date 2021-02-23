module Mutations
  class SignInUser < BaseMutation
    # Mutationsがnullableではないことを設定（必ず値を返す）
    null false

    argument :credentials, Types::AuthProviderCredentialsInput, required: false

    field :token, String, null: false
    field :user, Types::UserType, null: false

    def resolve(credentials: nil)
      return unless credentials

      user = User.find_by(email: credentials[:email])
      return unless user

      return unless user.authenticate(credentials[:password])

      payload = {
        sub: user.id,
        exp: (Time.now + 5.minutes).to_i
      }
      secret_key = Rails.application.credentials.secret_key_base
      token = JWT.encode(payload, secret_key, 'HS256')

      { user: user, token: token }
    end
  end
end
