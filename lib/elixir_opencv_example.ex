defmodule ElixirOpencvExample do
  @moduledoc """
  Documentation for `ElixirOpencvExample`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirOpencvExample.hello()
      :world

  """
  def hello do
    :world
  end

  # Pythonスクリプトを呼び出す新しい関数を追加
  @doc """
  Convert an image to grayscale using a Python OpenCV script.

  ## Parameters

  - input_path: The path to the input image.
  - output_path: The path where the grayscale image will be saved.

  ## Examples

      iex> ElixirOpencvExample.convert_to_grayscale("input.jpg", "output.jpg")
      {:ok, _}
  """
  def convert_to_grayscale(input_path, output_path) do
    System.cmd("python3", ["convert_to_grayscale.py", input_path, output_path])
  end
end
