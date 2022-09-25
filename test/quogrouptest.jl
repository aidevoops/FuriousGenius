
@testset "QuoGroup" begin
    z40 = Zn(40)
    Z20 = CreateGroupByGenerators(z40, z40(2))
    Z4 = CreateGroupByGenerators(z40, z40(10))
    Z8 = CreateGroupByGenerators(z40, z40(5))

    @test_throws GroupException CreateQuotientGroup(Z20, Z8)
    quo = CreateQuotientGroup(Z20, Z4)
    for p in quo.representants
        @test mod(p[1].k, 10) == p[2].k
    end

    zx = Gp{2}(Zn(20), Zn(30))
    G = CreateGroupByGenerators(zx, zx(1, 0), zx(0, 1))
    H = CreateGroupByGenerators(zx, zx(1, 1))
    K = CreateQuotientGroup(G, H)
    @test length(GetElements(K)) == 10

    s4 = Sn(4)
    S4 = CreateGroupByGenerators(s4, s4([1, 2]), s4([1, 2, 3, 4]))
    A4 = CreateGroupByGenerators(s4, s4([1, 2]), s4([1, 2, 3]))

    K4 = CreateGroupByGenerators(s4, s4([1, 3], [2, 4]), s4([1, 2], [3, 4]))
    @test_throws GroupException CreateQuotientGroup(S4, K4)

    Q = CreateQuotientGroup(A4, K4)
    @test length(GetElements(Q)) == 3
end
