function sphericalHarmonics (L, M)
dx = pi/60;
col = 0:dx:pi;
az = 0:dx:2*pi;
[phi,theta] = meshgrid(az,col);

l = L;
Plm = legendre(l,cos(theta));

m = M;
if l ~= 0
    Plm = reshape(Plm(m+1,:,:),size(phi));
end

a = (2*l+1)*factorial(l-m);
b = 4*pi*factorial(l+m);
C = sqrt(a/b);
Ylm = C .*Plm .*exp(1i*m*phi);

[Xm,Ym,Zm] = sph2cart(phi, pi/2-theta, abs(real(Ylm)));
surf(Xm,Ym,Zm)
title(['$Y_' num2str(l) '^' num2str(m) '$ spherical harmonic'],'interpreter','latex')

end