# module M
#   CONST = "Hello, world"

#   class C
#     def awesome_method
#       CONST
#     end
#   end
# end

# p M::C.new.awesome_method

# 上記と同じ結果になるメソッドはどれ？

# ----------------------------NG---------------------------------

# module M
#   CONST = "Hello, world"
# end

# class M::C
#   def awesome_method
#     CONST # 定義がブロック外のため、発動せず
#   end
# end

# p M::C.new.awesome_method

# ----------------------------OK---------------------------------

# class C
# end

# module M 

#   CONST = "Hello, world"
# モジュール内でCONSTの定義があるため、挿入し、Cクラスの中身をclass_evalによって変更で来ている

#   C.class_eval do
#     def awesome_method
#       CONST
#     end
#   end
# end

# p C.new.awesome_method

# ---------------------------OK----------------------------------

# class C
#   CONST = "Hello, world"
# end

# module M
#   C.class_eval(<<-CODE) # class_evalによって中身を直接いじる、CODEまでを全てCクラスに挿入している
#     def awesome_method
#       CONST
#     end
#   CODE # ここまでを全てCクラスに挿入
# end

# p C.new.awesome_method

# ---------------------------NG----------------------------------

# class C
#   CONST = "Hello, world"
# end

# module M
#   C.class_eval do
#     def awesome_method
#       CONST # 原因はここ、CONSTにアクセスできず、定義もないためエラー
#     end
#   end
# end

# p C.new.awesome_method