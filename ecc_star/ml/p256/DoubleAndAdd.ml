
open Prims
let op_Bar_Bar_Bar = (fun x y -> (UInt.log_or_limb x y))

let assign = (fun output input -> (let _38_10 = (let _79_19 = (Bigint.index_limb input 0)
in (Bigint.upd_limb output 0 _79_19))
in (let _38_12 = (let _79_20 = (Bigint.index_limb input 1)
in (Bigint.upd_limb output 1 _79_20))
in (let _38_14 = (let _79_21 = (Bigint.index_limb input 2)
in (Bigint.upd_limb output 2 _79_21))
in (let _38_16 = (let _79_22 = (Bigint.index_limb input 3)
in (Bigint.upd_limb output 3 _79_22))
in (let _38_18 = (let _79_23 = (Bigint.index_limb input 4)
in (Bigint.upd_limb output 4 _79_23))
in (let _38_20 = (let _79_24 = (Bigint.index_limb input 5)
in (Bigint.upd_limb output 5 _79_24))
in (let _38_22 = (let _79_25 = (Bigint.index_limb input 6)
in (Bigint.upd_limb output 6 _79_25))
in (let _79_26 = (Bigint.index_limb input 7)
in (Bigint.upd_limb output 7 _79_26))))))))))

let assign_masked = (fun output input maski -> (let masko = (UInt.log_not_limb maski)
in (let in0 = (Bigint.index_limb input 0)
in (let in1 = (Bigint.index_limb input 1)
in (let in2 = (Bigint.index_limb input 2)
in (let in3 = (Bigint.index_limb input 3)
in (let in4 = (Bigint.index_limb input 4)
in (let in5 = (Bigint.index_limb input 5)
in (let in6 = (Bigint.index_limb input 6)
in (let in7 = (Bigint.index_limb input 7)
in (let out0 = (Bigint.index_limb output 0)
in (let out1 = (Bigint.index_limb output 1)
in (let out2 = (Bigint.index_limb output 2)
in (let out3 = (Bigint.index_limb output 3)
in (let out4 = (Bigint.index_limb output 4)
in (let out5 = (Bigint.index_limb output 5)
in (let out6 = (Bigint.index_limb output 6)
in (let out7 = (Bigint.index_limb output 7)
in (let _38_49 = (Bigint.upd_limb output 0 (UInt.log_or_limb (UInt.log_and_limb maski in0) (UInt.log_and_limb masko out0)))
in (let _38_51 = (Bigint.upd_limb output 1 (UInt.log_or_limb (UInt.log_and_limb maski in1) (UInt.log_and_limb masko out1)))
in (let _38_53 = (Bigint.upd_limb output 2 (UInt.log_or_limb (UInt.log_and_limb maski in2) (UInt.log_and_limb masko out2)))
in (let _38_55 = (Bigint.upd_limb output 3 (UInt.log_or_limb (UInt.log_and_limb maski in3) (UInt.log_and_limb masko out3)))
in (let _38_57 = (Bigint.upd_limb output 4 (UInt.log_or_limb (UInt.log_and_limb maski in4) (UInt.log_and_limb masko out4)))
in (let _38_59 = (Bigint.upd_limb output 5 (UInt.log_or_limb (UInt.log_and_limb maski in5) (UInt.log_and_limb masko out5)))
in (let _38_61 = (Bigint.upd_limb output 6 (UInt.log_or_limb (UInt.log_and_limb maski in6) (UInt.log_and_limb masko out6)))
in (Bigint.upd_limb output 7 (UInt.log_or_limb (UInt.log_and_limb maski in7) (UInt.log_and_limb masko out7))))))))))))))))))))))))))))

let double = (fun two_p p -> (let tmp = (Bigint.create_limb Parameters.norm_length)
in (let tmp2 = (Bigint.create_limb Parameters.norm_length)
in (let delta = (Bigint.create_limb Parameters.norm_length)
in (let gamma = (Bigint.create_limb Parameters.norm_length)
in (let beta = (Bigint.create_limb Parameters.norm_length)
in (let alpha = (Bigint.create_limb Parameters.norm_length)
in (let ftmp = (Bigint.create_limb Parameters.norm_length)
in (let ftmp2 = (Bigint.create_limb Parameters.norm_length)
in (let small1 = (Bigint.create_limb Parameters.norm_length)
in (let small2 = (Bigint.create_limb Parameters.norm_length)
in (let x_in = (ConcretePoint.get_x p)
in (let y_in = (ConcretePoint.get_y p)
in (let z_in = (ConcretePoint.get_z p)
in (let x_out = (ConcretePoint.get_x two_p)
in (let y_out = (ConcretePoint.get_y two_p)
in (let z_out = (ConcretePoint.get_z two_p)
in (let _38_86 = (Bignum.fsquare delta z_in)
in (let _38_88 = (Bignum.fsquare gamma y_in)
in (let _38_90 = (Bignum.fmul beta x_in gamma)
in (let _38_92 = (assign ftmp delta)
in (let _38_94 = (assign ftmp2 delta)
in (let _38_96 = (Bignum.fdifference ftmp x_in)
in (let _38_98 = (Bignum.fsum ftmp2 x_in)
in (let _38_100 = (Bignum.fmul tmp ftmp ftmp2)
in (let _38_102 = (Bignum.fscalar alpha tmp Parameters.platform_size (UInt.to_limb "3"))
in (let _38_104 = (Bignum.fsquare ftmp alpha)
in (let _38_106 = (Bignum.fscalar x_out beta Parameters.platform_size (UInt.to_limb "8"))
in (let _38_108 = (Bignum.fdifference x_out ftmp)
in (let _38_110 = (assign z_out gamma)
in (let _38_112 = (Bignum.fsum z_out delta)
in (let _38_114 = (assign ftmp y_in)
in (let _38_116 = (Bignum.fsum ftmp z_in)
in (let _38_118 = (Bignum.fsquare ftmp2 ftmp)
in (let _38_120 = (Bignum.fdifference z_out ftmp2)
in (let _38_122 = (Bignum.fsquare ftmp gamma)
in (let _38_124 = (Bignum.fscalar y_out ftmp Parameters.platform_size (UInt.to_limb "8"))
in (let _38_126 = (assign ftmp x_out)
in (let _38_128 = (Bignum.fscalar ftmp2 beta Parameters.platform_size (UInt.to_limb "4"))
in (let _38_130 = (Bignum.fdifference ftmp ftmp2)
in (let _38_132 = (Bignum.fmul ftmp2 ftmp alpha)
in (Bignum.fdifference y_out ftmp2))))))))))))))))))))))))))))))))))))))))))

let is_zero = (fun z -> (let z0 = (Bigint.index_limb z 0)
in (let z1 = (Bigint.index_limb z 1)
in (let z2 = (Bigint.index_limb z 2)
in (let z3 = (Bigint.index_limb z 3)
in (let z4 = (Bigint.index_limb z 4)
in (let z5 = (Bigint.index_limb z 5)
in (let z6 = (Bigint.index_limb z 6)
in (let z7 = (Bigint.index_limb z 7)
in (let mask = (op_Bar_Bar_Bar (op_Bar_Bar_Bar (op_Bar_Bar_Bar (op_Bar_Bar_Bar (op_Bar_Bar_Bar (op_Bar_Bar_Bar (op_Bar_Bar_Bar z0 z1) z2) z3) z4) z5) z6) z7)
in (UInt.eq_limb mask UInt.zero_limb)))))))))))

let add = (fun p_plus_q p q -> (let ftmp = (Bigint.create_limb Parameters.norm_length)
in (let ftmp2 = (Bigint.create_limb Parameters.norm_length)
in (let ftmp3 = (Bigint.create_limb Parameters.norm_length)
in (let x_out = (Bigint.create_limb Parameters.norm_length)
in (let y_out = (Bigint.create_limb Parameters.norm_length)
in (let z_out = (Bigint.create_limb Parameters.norm_length)
in (let tmp = (Bigint.create_limb Parameters.norm_length)
in (let tmp2 = (Bigint.create_limb Parameters.norm_length)
in (let z1z1 = (Bigint.create_limb Parameters.norm_length)
in (let z2z2 = (Bigint.create_limb Parameters.norm_length)
in (let u1 = (Bigint.create_limb Parameters.norm_length)
in (let u2 = (Bigint.create_limb Parameters.norm_length)
in (let s1 = (Bigint.create_limb Parameters.norm_length)
in (let s2 = (Bigint.create_limb Parameters.norm_length)
in (let h = (Bigint.create_limb Parameters.norm_length)
in (let i = (Bigint.create_limb Parameters.norm_length)
in (let j = (Bigint.create_limb Parameters.norm_length)
in (let r = (Bigint.create_limb Parameters.norm_length)
in (let v = (Bigint.create_limb Parameters.norm_length)
in (let x3 = (ConcretePoint.get_x p_plus_q)
in (let y3 = (ConcretePoint.get_y p_plus_q)
in (let z3 = (ConcretePoint.get_z p_plus_q)
in (let x1 = (ConcretePoint.get_x p)
in (let y1 = (ConcretePoint.get_y p)
in (let z1 = (ConcretePoint.get_z p)
in (let x2 = (ConcretePoint.get_x q)
in (let y2 = (ConcretePoint.get_y q)
in (let z2 = (ConcretePoint.get_z q)
in (let z1_is_zero = (is_zero z1)
in (let z2_is_zero = (is_zero z2)
in (let _38_187 = (Bignum.fsquare z1z1 z1)
in (let _38_189 = (Bignum.fsquare z2z2 z2)
in (let _38_191 = (Bignum.fmul u1 x1 z2z2)
in (let _38_193 = (Bignum.fmul u2 x2 z1z1)
in (let _38_195 = (Bignum.fmul ftmp z2 z2z2)
in (let _38_197 = (Bignum.fmul ftmp2 z1 z1z1)
in (let _38_199 = (Bignum.fmul s1 y1 ftmp)
in (let _38_201 = (Bignum.fmul s2 y2 ftmp2)
in (let _38_203 = (assign h u1)
in (let _38_205 = (Bignum.fdifference h u2)
in (let _38_207 = (Bignum.fscalar ftmp h Parameters.platform_size (UInt.to_limb "2"))
in (let _38_209 = (Bignum.fsquare i ftmp)
in (let _38_211 = (Bignum.fmul j h i)
in (let _38_213 = (assign ftmp s1)
in (let _38_215 = (Bignum.fdifference ftmp s2)
in (let _38_217 = (Bignum.fscalar r ftmp Parameters.platform_size (UInt.to_limb "2"))
in (let _38_219 = (Bignum.fmul v u1 i)
in (let _38_221 = (Bignum.fscalar x3 v Parameters.platform_size (UInt.to_limb "2"))
in (let _38_223 = (Bignum.fsum x3 j)
in (let _38_225 = (Bignum.fsquare ftmp2 r)
in (let _38_227 = (Bignum.fdifference x3 ftmp2)
in (let _38_229 = (Bignum.fscalar ftmp s1 Parameters.platform_size (UInt.to_limb "2"))
in (let _38_231 = (Bignum.fmul y3 ftmp j)
in (let _38_233 = (assign ftmp x3)
in (let _38_235 = (Bignum.fdifference ftmp v)
in (let _38_237 = (Bignum.fmul ftmp2 r ftmp)
in (let _38_239 = (Bignum.fdifference y3 ftmp2)
in (let _38_241 = (Bignum.fsum z1z1 z2z2)
in (let _38_243 = (assign ftmp z1)
in (let _38_245 = (Bignum.fsum ftmp z2)
in (let _38_247 = (Bignum.fsquare ftmp2 ftmp)
in (let _38_249 = (Bignum.fdifference z1z1 ftmp2)
in (let _38_251 = (Bignum.fmul z3 z1z1 h)
in (let _38_253 = (assign_masked x3 x2 z1_is_zero)
in (let _38_255 = (assign_masked x3 x1 z2_is_zero)
in (let _38_257 = (assign_masked y3 y2 z1_is_zero)
in (let _38_259 = (assign_masked y3 y1 z2_is_zero)
in (let _38_261 = (assign_masked z3 z2 z1_is_zero)
in (assign_masked z3 z1 z2_is_zero))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

let double_and_add = (fun two_p two_p_plus_q p p_plus_q q -> (let _38_268 = (double two_p p)
in (add two_p_plus_q p p_plus_q)))

let double_and_add' = double_and_add




