defmodule CardDemoWeb.PageController do
  use CardDemoWeb, :controller

  def index(conn, _params) do
    entries =
      Stream.repeatedly(fn ->
        %{
          title: random_string(),
          sub_title: random_string(),
          # Forces browser not to cache images
          image: "https://picsum.photos/500?#{random_img_seed()}"
        }
      end)
      |> Enum.take(15)

    render(conn, "index.html", %{entries: entries})
  end

  defp random_string, do: 12 |> :crypto.strong_rand_bytes() |> Base.encode64()
  defp random_img_seed, do: :rand.uniform()
end
