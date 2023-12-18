require 'date' # ライブラリを読み込む

d = Date.new(2015, 1, 5) # 日付のクラスを変数に代入
puts d.strftime("%x") # 01/05/15、ロケールに合わせた日付表示、今回のアウトプットはen_US表示