result = (1..100).each.lazy.chunk(&:even?).first(5)
# 1から100までの数字に対して偶数かどうか、そして最初から5個の値のみ取得
puts result # 結果を代入して出力