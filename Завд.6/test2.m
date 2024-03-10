warning off
clc

x = input('Enter the x coordinate in the RCCS: ');
y = input('Enter the y coordinate in the RCCS: ');
z = input('Enter the z coordinate in the RCCS: ');
r_p = input('Enter the coordinate P in the Polar Coordinate System: ');
fi_p = input('Enter the rotation angle Fi in the Polar Coordinate System: ');
ro_c = input('Enter the coordinate P in the Cylindrical Coordinate System: ');
fi_c = input('Enter the rotation angle Fi in the Cylindrical Coordinate System: ');
z_c = input('Enter the z coordinate in the Cylindrical Coordinate System: ');
r_s = input('Enter the coordinate r in the Spherical Coordinate System: ');
teta_s = input('Enter the zenith angle teta in the Spherical Coordinate System: ');
fi_s = input('Enter the azimuthal angle Fi in the Spherical Coordinate System: ');

t2_dec_to_pol_func(x, y);
t2_pol_to_dec_func(r_p, fi_p);
t2_dec_to_cyl_func(x, y, z);
t2_cyl_to_dec_func(ro_c, fi_c, z_c);
t2_dec_to_sph_func(x, y, z);
t2_sph_to_dec_func(r_s, teta_s, fi_s);
