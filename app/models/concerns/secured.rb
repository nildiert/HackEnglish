module Secured
    def authenticate_user!
        token_regex = /Bearer (\w+)/
        # Reading auth HEADER
        headers = request.headers

        if headers['Authorization'].present? && headers['Authorization'].match(token_regex)
            token = headers['Authorization'].match(token_regex)[1]
            # Checking if token is for a user
            user = User.find_by(auth_token: token)


            if(Current.user = user)
                return
            end
        end
        render json: {error: :unauthorized}, status: :unauthorized
    end
end