p [1,2,3,4,5].partition(&:odd?)

# 上記と同じ結果のメソッドは下記になります
# p [1,2,3,4,5].partition { |value| value.odd? }