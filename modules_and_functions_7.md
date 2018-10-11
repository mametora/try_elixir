## 浮動小数点を二つの10進数からなる文字列に変換する

```elixir
:erlang.float_to_list 3.14, [{:decimals, 253}, :compact]
```

## オペレーティングシステムの環境変数を取り出す

```elixir
System.get_env()
```

## ファイル名の拡張子を取り出す

```elixir
Path.extname 'dave/test.exs'
```

## プロセスのカレントワーキングディレクトリを返す

```elixir
System.cwd
```

## JSON文字列を、Elixirのデータ構造に変換する

https://github.com/devinus/poison

https://github.com/michalmuskala/jason

## オペレーティングシステムのシェルでコマンドを実行する

```elixir
System.cmd("date", [])
```
