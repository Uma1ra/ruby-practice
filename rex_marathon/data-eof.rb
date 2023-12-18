# データの終わりまで読み込み続けるループ
while not DATA.eof? # DATAは__END__以降のデータを読み込める
  lines = DATA.readlines # 各行を読み込んで配列としてに代入している
  lines.map(&:chomp!) # .readlinesメソッドは改行が含まれるため、mapで各値を、chompで改行をカット、!変更箇所をそのまま作成（じゃないと代入の必要がある）
  lines.reverse # 配列の値を逆にするが、!がないため使用するには代入の必要がある（今回はアウトプットされない）
  p lines # ["1", "2", "3", "4"]
end

__END__
# ここからDATAが読み込まれ始める
1
2
3
4