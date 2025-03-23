defmodule Teac.TwitchApiClient.Users do
  def get(opts) do
    token = Keyword.fetch!(opts, :token)
    client_id = Keyword.fetch!(opts, :client_id)

    case Req.get!("https://api.twitch.tv/helix/users",
           headers: [
             {"Authorization", "Bearer #{token}"},
             {"Client-Id", client_id}
           ]
           # params: [login: "your_username_here"]
         ) do
      %Req.Response{status: 200, body: %{"data" => data}} ->
        {:ok, data}

      %Req.Response{body: body} ->
        {:error, body}
    end
  end

  def put() do
    # PUT https://api.twitch.tv/helix/users
  end

  defmodule Blocks do
    def get() do
      # GET https://api.twitch.tv/helix/users/blocks
    end

    def put() do
      # PUT https://api.twitch.tv/helix/users/blocks
    end

    def delete() do
      # DELETE https://api.twitch.tv/helix/users/blocks
    end
  end

  defmodule Extensions do
    def get() do
      # GET https://api.twitch.tv/helix/users/extensions
    end

    def put() do
      # PUT https://api.twitch.tv/helix/users/extensions
    end
  end

  defmodule Extensions.List do
    def get() do
      # GET https://api.twitch.tv/helix/users/extensions/list
    end
  end
end
