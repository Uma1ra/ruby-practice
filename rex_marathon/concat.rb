def hoge(n) # メソッドの定義、nで値を受け取る
  if n % 3 == 0 # 3で割り切れる場合実行
    "hello"
  elsif n % 5 == 0 # 5で割り切れる場合実行
    "world"
  end
end

str = '' # 空の文字列を定義
str.concat hoge(3) # concatメソッドで上記の文字列にくっつける（この場合hogeメソッドに与えられた値が3で割り切れる為、helloがアウトプット）
str.concat hoge(5) # 上記同様に、5で割り切れた場合のworldをアウトプットし、concatでくっつける

puts str # helloworld、最終的に繋げられた文字列が表示される