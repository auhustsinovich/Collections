import collections

var stack = Stack<Int>()
var statsStack = StackStatistics<Int>()

stack.push(1)
stack.push(2)
stack.push(3)

statsStack.push(2)
statsStack.push(0)
statsStack.push(1)

print("stack is empty - \(stack.isEmpty).")
print("statsStack has - \(statsStack.count) elements.")
