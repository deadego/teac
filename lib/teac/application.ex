defmodule Teac.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TeacWeb.Telemetry,
      Teac.Repo,
      {DNSCluster, query: Application.get_env(:teac, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Teac.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Teac.Finch},
      {DynamicSupervisor, name: Teac.TwitchWssClientSupervisor, strategy: :one_for_one},
      # Start a worker by calling: Teac.Worker.start_link(arg)
      # {Teac.Worker, arg},
      # Start to serve requests, typically the last entry
      TeacWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Teac.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TeacWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
