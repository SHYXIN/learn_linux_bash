#!/bin/bash

# Check out how an exit status of 0 affects the logical operators:
true && echo "We get here because the first part is true!"
true || echo "We never see this because the first part is true :("

# Check out how exit status of 1 affects the logical operator:
false && echo "Since we only continue after && with the exit status of 0, this is never printed."
false || echo "Because we only continue after || with a return code that is not 0, we see this!"


# #!/bin/bash

# # 检查退出状态为0时逻辑运算符的表现：0
# true && echo "因为第一部分是true，所以我们会到达这里！"
# true || echo "因为第一部分是true，所以我们永远不会看到这个：("

# # 检查退出状态为1时逻辑运算符的表现：非0
# false && echo "由于我们只在&&之后且退出状态为0时才继续，所以这永远不会被打印。"
# false || echo "因为我们只在||之后且返回码不为0时才继续，所以我们能看到这个！"
