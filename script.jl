
using FuriousGenius

z5 = Zn(5)
z8 = Zn(8)
z10 = Zn(10)
z15 = Zn(15)
z8xz10 = Gp{2}(z8, z10)
z5xz10xz15 = Gp{3}(z5, z10, z15)

# g = Gp{3}(Zn(4), Zn(6), Zn(8))
# wg = CreateGroupElements(g, g(1, 0, 0), g(0, 1, 0), g(0, 0, 1))
# # @show wg.elements
# @show length(wg.elements)
# arr = sort([wg.monogenics...], by=p -> (length(p[2]), p[1]))
# n = length(arr)
# for i = 1:n
#     p = arr[i]
#     e = EltOrder(i, p[1], length(p[2]))
#     println(e)
# end


println("bye.")
