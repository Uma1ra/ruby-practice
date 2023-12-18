class Object
  CONST = "1"
  def const_succ
    CONST.succ! # 次に繰り越されるメソッド、破壊型（アルファベットや数字、この場合は →2）
  end
end

class Child1
  const_succ # 2
  class << self
    const_succ # 3
  end
end

class Child2
  const_succ # 4
  def initialize
    const_succ # 5
  end
end

Child1.new # →2 →3
Child2.new # →4 →5

p Object::CONST # 現在の値 = 5