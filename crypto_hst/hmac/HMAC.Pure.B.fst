module HMAC.Pure.B

open FStar.UInt32
open Hacl.UInt32
open Hacl.SBuffer
open Hacl.Operations.Pure

module U8 = FStar.UInt8
module S8 = Hacl.UInt8
module U32 = FStar.UInt32
module S32 = Hacl.UInt32
module U64 = FStar.UInt64
module S64 = Hacl.UInt64
module SB = Hacl.SBuffer

module HM = Hash.Sha256.Pure.B

(* Define base types *)
let u8 = FStar.UInt8.t
let s8 = Hacl.UInt8.t
let u32 = FStar.UInt32.t
let s32 = Hacl.UInt32.t
let uint32s = Seq.seq s32
let bytes = Seq.seq s8


(* Define algorithm parameters *)
let hash = HM.sha256
let hashsize = HM.hl
let blocksize = HM.bl
let hl = hashsize
let bl = blocksize


let u8_to_s8 = Hacl.Cast.uint8_to_sint8
let u32_to_s32 = Hacl.Cast.uint32_to_sint32


(* Define a function to wrap the key length after bl bits *)
let wrap_key (key:bytes) : GTot (okey:bytes{Seq.length okey = U32.v bl}) =
  if Seq.length key > U32.v bl then
    let okey = hash key in
    Seq.append okey (Seq.create (U32.v bl - U32.v hl) (u8_to_s8 0uy))
  else
    Seq.append key (Seq.create (U32.v bl - (Seq.length key)) (u8_to_s8 0uy))


(* Define the internal function *)
let hmac_core (key:bytes) (data:bytes{U32.v bl + Seq.length data < pow2 32})
  : GTot (mac:bytes{Seq.length mac = U32.v hl}) =

  (* Define ipad and opad *)
  let ipad = Seq.create (U32.v bl) (u8_to_s8 0x36uy) in
  let opad = Seq.create (U32.v bl) (u8_to_s8 0x5cuy) in

  (* Step 1: make sure the key has the proper length *)
  let okey = wrap_key key in

  (* Step 2: xor "result of step 1" with ipad *)
  let s2 = xor_bytes ipad okey bl in

  (* Step 3: append data to "result of step 2" *)
  let s3 = Seq.append s2 data in

  (* Step 4: apply H to "result of step 3" *)
  let s4 = hash s3 in

  (* Step 5: xor "result of step 1" with opad *)
  let s5 = xor_bytes okey opad bl in

  (* Step 6: append "result of step 4" to "result of step 5" *)
  let s6 = Seq.append s5 s4 in

  (* Step 7: apply H to "result of step 6" *)
  hash s6
