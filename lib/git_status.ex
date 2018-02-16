defmodule GitStatus do
  require Logger

  @commit (case System.cmd("git", ["rev-parse", "HEAD"]) do
    {hash, 0} ->
      String.trim(hash)
    _ ->
      Logger.warn("Could not read git commit hash")
      "UNKNOWN"
  end)

  @is_clean (case System.cmd("git", ["status", "--porcelain"]) do
    {"", 0} ->
      true
    {_, 0} ->
      false
    {_, _} ->
      Logger.warn("Could not read git status")
      false
  end)

  @doc """
  The git commit hash read at compile time, if present
  """
  def commit(), do: @commit

  @doc """
  Returns if the commit value included all source code at build time.
  """
  def is_clean?(), do: @is_clean
end
