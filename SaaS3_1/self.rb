x = 10
y = 50

min = if x < y then x else y end
# print min


x, y = 1 , 2
# print x,y
# print x
# print y

class Module
  def attr_ (*syms)
    syms.each do |sym|
      class_eval %{def #{sym}= (val)
        @#{sym} = val
      end}
    end
  end
end


def block
  print "called function"
  yield
  print " exit DEF"
end

block {
  print " In Block"y
}
