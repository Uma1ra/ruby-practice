class C
  class << C # singletonクラスを作成
    def hoge
      'Hi'
    end
  end

  def hoge
    'Goodbye'
  end
end

p C.new.hoge # "Goodbye"
p C.hoge # "Hi"