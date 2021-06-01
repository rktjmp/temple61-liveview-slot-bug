defmodule BugWeb.UserLive.Test do
  use BugWeb, :live_view

  alias Bug.Accounts

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(_, _, socket) do
    {
      :noreply,
      socket
    }
  end
end
