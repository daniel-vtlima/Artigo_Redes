function cost = Fitness_CS(T, N, nD, upB, LwB, ft, Pn)

for n = 1: N,
    for i = 1: nD,
        for t = 1: T,
            if(t <= 9 || 15<= t <= 18.5 || 21 <= t <= 0.1)
                cost(n,i,t) = cost(n,i,j) + ft(3).*Pn
            elseif(t <= 12)
                cost(n,i,t) = cost(n,i,j) + ft(2).*Pn
            elseif(t < 15 || t < 9)
                cost(n,i,t) = cost(n,i,j) + ft(1).*Pn
            else
                cost(n,i,t) = cost(n,i,j) + ft(5).*Pn
            end
        end
    end
end

end
