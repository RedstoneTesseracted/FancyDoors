# This function shows a particle outline surrounding the base door entity
# It is used to show the door base's position when in configuration mode

# Lines:
# (0,0,0) -> (0,0,1)
# (0,0,0) -> (0,1,0)
# (0,0,0) -> (1,0,0)
# (1,1,0) -> (1,1,1)
# (1,1,0) -> (1,0,0)
# (1,1,0) -> (0,1,0)
# (0,1,1) -> (0,1,0)
# (0,1,1) -> (0,0,1)
# (0,1,1) -> (1,1,1)
# (1,0,1) -> (1,0,0)
# (1,0,1) -> (1,1,1)
# (1,0,1) -> (0,0,1)

# Generated using the following Python code:
# lines = (((0,0,0), (0,0,1)),  ((0,0,0), (0,1,0)),  ((0,0,0), (1,0,0)),  ((1,1,0), (1,1,1)),  ((1,1,0), (1,0,0)),  ((1,1,0), (0,1,0)),  ((0,1,1), (0,1,0)),  ((0,1,1), (0,0,1)),  ((0,1,1), (1,1,1)),  ((1,0,1), (1,0,0)),  ((1,0,1), (1,1,1)),  ((1,0,1), (0,0,1)))
# N = 10
# for (x1, y1, z1), (x2, y2, z2) in lines:
#     for i in range(N):
#         x = (x2-x1)/N*i+x1
#         y = (y2-y1)/N*i+y1
#         z = (z2-z1)/N*i+z1
#         print(f"particle minecraft:dust{{color:[0.0f,0.0f,1.0f],scale:0.5f}} ~{x} ~{y} ~{z} 0.0125 0.0125 0.0125 0.0 1")

particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.1111111111111111 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.2222222222222222 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.3333333333333333 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.4444444444444444 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.5555555555555556 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.6666666666666666 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.7777777777777777 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.8888888888888888 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.1111111111111111 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.2222222222222222 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.3333333333333333 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.4444444444444444 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.5555555555555556 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.6666666666666666 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.7777777777777777 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.8888888888888888 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.1111111111111111 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.2222222222222222 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.3333333333333333 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.4444444444444444 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.5555555555555556 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.6666666666666666 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.7777777777777777 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.8888888888888888 ~0.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.1111111111111111 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.2222222222222222 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.3333333333333333 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.4444444444444444 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.5555555555555556 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.6666666666666666 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.7777777777777777 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.8888888888888888 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.8888888888888888 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.7777777777777778 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.6666666666666667 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.5555555555555556 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.4444444444444444 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.33333333333333337 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.22222222222222232 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.11111111111111116 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.8888888888888888 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.7777777777777778 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.6666666666666667 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.5555555555555556 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.4444444444444444 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.33333333333333337 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.22222222222222232 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.11111111111111116 ~1.0 ~0.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~0.8888888888888888 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~0.7777777777777778 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~0.6666666666666667 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~0.5555555555555556 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~0.4444444444444444 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~0.33333333333333337 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~0.22222222222222232 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~0.11111111111111116 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.8888888888888888 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.7777777777777778 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.6666666666666667 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.5555555555555556 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.4444444444444444 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.33333333333333337 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.22222222222222232 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~0.11111111111111116 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.0 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.1111111111111111 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.2222222222222222 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.3333333333333333 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.4444444444444444 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.5555555555555556 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.6666666666666666 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.7777777777777777 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.8888888888888888 ~1.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~0.8888888888888888 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~0.7777777777777778 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~0.6666666666666667 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~0.5555555555555556 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~0.4444444444444444 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~0.33333333333333337 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~0.22222222222222232 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~0.11111111111111116 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.1111111111111111 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.2222222222222222 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.3333333333333333 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.4444444444444444 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.5555555555555556 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.6666666666666666 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.7777777777777777 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.8888888888888888 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~1.0 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.8888888888888888 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.7777777777777778 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.6666666666666667 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.5555555555555556 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.4444444444444444 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.33333333333333337 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.22222222222222232 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
particle minecraft:dust{color:[0.0f,0.0f,1.0f],scale:0.6f} ~0.11111111111111116 ~0.0 ~1.0 0.0125 0.0125 0.0125 0.0 1
