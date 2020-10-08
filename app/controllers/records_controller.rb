class RecordsController < ApplicationController
  def new
    rec = Record.create(
      campaign: params[:campaign_id],
      email: params[:email],
      message: params[:message],
      details: params[:details]
    )
    rec.save!
  end
  def get
    token = params[:token]
    user = Token.where(api_key: token)
    if user.empty?
      render json: {status: 403, message: "Token not found."}
    else
      recs = Record.where("email LIKE ?", "%#{user.first.pattern}")
      render json: {status: 200, records: recs}
    end
  end
end
