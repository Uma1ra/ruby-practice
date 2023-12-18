class C # クラスを定義
  @val = 3
  attr_accessor :val # セッターとゲッターを追加
  class << self
    @val = 10
  end
  def initialize
    @val *= 2 if val
  end
end

c = C.new
c.val += 10 # エラーの原因、.valとはnilなため

p c.val # NoMethodError