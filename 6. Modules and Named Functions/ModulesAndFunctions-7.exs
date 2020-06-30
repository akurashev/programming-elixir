:io.format("~.2f~n", [123.45678]) # 123.46

System.fetch_env("PATH") # {:ok, "/usr/lib/erlang/erts-11.0/bin:/usr/lib/erlang/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"}

Path.extname("dave/test.exs") # ".exs"

File.cwd # {:ok, "/root/programming-elixir/6. Modules and Named Functions"}

# https://github.com/michalmuskala/jason or https://github.com/devinus/poison

System.cmd("echo", ["hi there!"]) # {"hi there!\n", 0}
