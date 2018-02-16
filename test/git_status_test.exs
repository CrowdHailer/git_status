defmodule GitStatusTest do
  use ExUnit.Case
  doctest GitStatus

  test "greets the world" do
    assert GitStatus.is_clean?()
  end
end
