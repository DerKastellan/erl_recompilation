defmodule Mix.Tasks.TestCopy do

  def run(_) do
    File.rm("_build/dev/lib/erl_test/ebin/second.beam")
    File.rm("src/second.erl")

    File.mkdir_p("_build/dev/lib/erl_test/ebin")
    File.cp!("priv/second.erl", "src/second.erl")
    File.cp!("priv/second.beam", "_build/dev/lib/erl_test/ebin/second.beam")
  end

end
