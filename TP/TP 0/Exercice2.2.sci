funcprot(0)

function [m]=MinV1(v)
    m =v(1)
    for k=v
        if k<m then
            m=k
        end
    end
endfunction

function [m]=MinV2(v)
    m =v(1)
    for k=1:length(v)
        if v(k)<m then
            m=v(k)
        end
    end
endfunction

function [m]=MinMat(M)
    m =M(1,1)
    for v=M
        for k=v'
            if k<m then
                m=k
            end
        end
    end
endfunction

