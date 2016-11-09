class Api::V1::MediaController < Api::V1::BaseController
	def show
		medium = Medium.find(params[:id])

		render(json: Api::V1::UserSerializer.new(user).to_json)
	end
end