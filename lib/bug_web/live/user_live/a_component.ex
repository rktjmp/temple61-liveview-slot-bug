defmodule Bug.Components.AComponent do
  import Temple.Component

  def splat(assigns) do
    assigns
    |> Map.delete(:inner_block)
    |> Enum.into([])
  end

#  render do
#    button splat(assigns) do
#      slot :default
#    end
#  end


  render do
    # splat test
    # OK
    p splat(assigns), do: "This is a component"

    # "cant -> not a macro" bug test
    # OK
    case @value do
      100 ->
        p do: "value is 100"
      _ ->
        p do: "value is not 100"
    end

    # render_block/2 bug test
    # FAIL
    slot :default
  end
end
