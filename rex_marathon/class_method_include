module M # モジュールでメソッドをカプセル化
  def class_m # メソッドを格納（インスタンスメソッドである）
    "class_m"
  end
end

class C
  include M # Mモジュールのメソッドを受け継ぐ
end

p C.methods.include? :class_m # methodsはクラスメソッドを呼び出していて、インスタンスメソッドであるためfalse