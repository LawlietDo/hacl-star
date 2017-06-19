module Hacl.Test.Ed25519

#set-options "--lax"

open FStar.Buffer

module Ed25519 = Ed25519

val main: unit -> ST FStar.Int32.t
  (requires (fun h -> True))
  (ensures  (fun h0 r h1 -> True))
let main () =
  push_frame();

  let sk1 = createL [0x9duy; 0x61uy; 0xb1uy; 0x9duy; 0xefuy; 0xfduy; 0x5auy; 0x60uy;
           0xbauy; 0x84uy; 0x4auy; 0xf4uy; 0x92uy; 0xecuy; 0x2cuy; 0xc4uy;
           0x44uy; 0x49uy; 0xc5uy; 0x69uy; 0x7buy; 0x32uy; 0x69uy; 0x19uy;
           0x70uy; 0x3buy; 0xacuy; 0x03uy; 0x1cuy; 0xaeuy; 0x7fuy; 0x60uy] in

  let pk1 = createL [0xd7uy; 0x5auy; 0x98uy; 0x01uy; 0x82uy; 0xb1uy; 0x0auy; 0xb7uy;
           0xd5uy; 0x4buy; 0xfeuy; 0xd3uy; 0xc9uy; 0x64uy; 0x07uy; 0x3auy;
           0x0euy; 0xe1uy; 0x72uy; 0xf3uy; 0xdauy; 0xa6uy; 0x23uy; 0x25uy;
           0xafuy; 0x02uy; 0x1auy; 0x68uy; 0xf7uy; 0x07uy; 0x51uy; 0x1auy] in

  let msg1 = create 0uy 0ul in

  let sig1 = createL [0xe5uy; 0x56uy; 0x43uy; 0x00uy; 0xc3uy; 0x60uy; 0xacuy; 0x72uy;
            0x90uy; 0x86uy; 0xe2uy; 0xccuy; 0x80uy; 0x6euy; 0x82uy; 0x8auy;
            0x84uy; 0x87uy; 0x7fuy; 0x1euy; 0xb8uy; 0xe5uy; 0xd9uy; 0x74uy;
            0xd8uy; 0x73uy; 0xe0uy; 0x65uy; 0x22uy; 0x49uy; 0x01uy; 0x55uy;
            0x5fuy; 0xb8uy; 0x82uy; 0x15uy; 0x90uy; 0xa3uy; 0x3buy; 0xacuy;
            0xc6uy; 0x1euy; 0x39uy; 0x70uy; 0x1cuy; 0xf9uy; 0xb4uy; 0x6buy;
            0xd2uy; 0x5buy; 0xf5uy; 0xf0uy; 0x59uy; 0x5buy; 0xbeuy; 0x24uy;
            0x65uy; 0x51uy; 0x41uy; 0x43uy; 0x8euy; 0x7auy; 0x10uy; 0x0buy] in
    
  let sk2 = createL [0x4cuy; 0xcduy; 0x08uy; 0x9buy; 0x28uy; 0xffuy; 0x96uy; 0xdauy; 0x9duy; 0xb6uy; 0xc3uy; 0x46uy; 0xecuy; 0x11uy; 0x4euy; 0x0fuy; 0x5buy; 0x8auy; 0x31uy; 0x9fuy; 0x35uy; 0xabuy; 0xa6uy; 0x24uy; 0xdauy; 0x8cuy; 0xf6uy; 0xeduy; 0x4fuy; 0xb8uy; 0xa6uy; 0xfbuy] in

  let pk2 = createL [0x3duy; 0x40uy; 0x17uy; 0xc3uy; 0xe8uy; 0x43uy; 0x89uy; 0x5auy; 0x92uy; 0xb7uy; 0x0auy; 0xa7uy; 0x4duy; 0x1buy; 0x7euy; 0xbcuy; 0x9cuy; 0x98uy; 0x2cuy; 0xcfuy; 0x2euy; 0xc4uy; 0x96uy; 0x8cuy; 0xc0uy; 0xcduy; 0x55uy; 0xf1uy; 0x2auy; 0xf4uy; 0x66uy; 0x0cuy] in

  let msg2 = createL [0x72uy] in

  let sig2 = createL [0x92uy; 0xa0uy; 0x09uy; 0xa9uy; 0xf0uy; 0xd4uy; 0xcauy; 0xb8uy;
            0x72uy; 0x0euy; 0x82uy; 0x0buy; 0x5fuy; 0x64uy; 0x25uy; 0x40uy;
            0xa2uy; 0xb2uy; 0x7buy; 0x54uy; 0x16uy; 0x50uy; 0x3fuy; 0x8fuy;
            0xb3uy; 0x76uy; 0x22uy; 0x23uy; 0xebuy; 0xdbuy; 0x69uy; 0xdauy;
            0x08uy; 0x5auy; 0xc1uy; 0xe4uy; 0x3euy; 0x15uy; 0x99uy; 0x6euy;
            0x45uy; 0x8fuy; 0x36uy; 0x13uy; 0xd0uy; 0xf1uy; 0x1duy; 0x8cuy;
            0x38uy; 0x7buy; 0x2euy; 0xaeuy; 0xb4uy; 0x30uy; 0x2auy; 0xeeuy;
            0xb0uy; 0x0duy; 0x29uy; 0x16uy; 0x12uy; 0xbbuy; 0x0cuy; 0x00uy] in

  let sk3 = createL [0xc5uy; 0xaauy; 0x8duy; 0xf4uy; 0x3fuy; 0x9fuy; 0x83uy; 0x7buy;
           0xeduy; 0xb7uy; 0x44uy; 0x2fuy; 0x31uy; 0xdcuy; 0xb7uy; 0xb1uy;
           0x66uy; 0xd3uy; 0x85uy; 0x35uy; 0x07uy; 0x6fuy; 0x09uy; 0x4buy;
           0x85uy; 0xceuy; 0x3auy; 0x2euy; 0x0buy; 0x44uy; 0x58uy; 0xf7uy] in

  let pk3 = createL [0xfcuy; 0x51uy; 0xcduy; 0x8euy; 0x62uy; 0x18uy; 0xa1uy; 0xa3uy;
           0x8duy; 0xa4uy; 0x7euy; 0xd0uy; 0x02uy; 0x30uy; 0xf0uy; 0x58uy;
           0x08uy; 0x16uy; 0xeduy; 0x13uy; 0xbauy; 0x33uy; 0x03uy; 0xacuy;
           0x5duy; 0xebuy; 0x91uy; 0x15uy; 0x48uy; 0x90uy; 0x80uy; 0x25uy] in

  let msg3 = createL [0xafuy; 0x82uy] in

  let sig3 = createL [0x62uy; 0x91uy; 0xd6uy; 0x57uy; 0xdeuy; 0xecuy; 0x24uy; 0x02uy;
            0x48uy; 0x27uy; 0xe6uy; 0x9cuy; 0x3auy; 0xbeuy; 0x01uy; 0xa3uy;
            0x0cuy; 0xe5uy; 0x48uy; 0xa2uy; 0x84uy; 0x74uy; 0x3auy; 0x44uy;
            0x5euy; 0x36uy; 0x80uy; 0xd7uy; 0xdbuy; 0x5auy; 0xc3uy; 0xacuy;
            0x18uy; 0xffuy; 0x9buy; 0x53uy; 0x8duy; 0x16uy; 0xf2uy; 0x90uy;
            0xaeuy; 0x67uy; 0xf7uy; 0x60uy; 0x98uy; 0x4duy; 0xc6uy; 0x59uy;
            0x4auy; 0x7cuy; 0x15uy; 0xe9uy; 0x71uy; 0x6euy; 0xd2uy; 0x8duy;
            0xc0uy; 0x27uy; 0xbeuy; 0xceuy; 0xeauy; 0x1euy; 0xc4uy; 0x0auy] in

  (* let sk4 = createL [0xf5uy; 0xe5uy; 0x76uy; 0x7cuy; 0xf1uy; 0x53uy; 0x31uy; 0x95uy; *)
  (*          0x17uy; 0x63uy; 0x0fuy; 0x22uy; 0x68uy; 0x76uy; 0xb8uy; 0x6cuy; *)
  (*          0x81uy; 0x60uy; 0xccuy; 0x58uy; 0x3buy; 0xc0uy; 0x13uy; 0x74uy; *)
  (*          0x4cuy; 0x6buy; 0xf2uy; 0x55uy; 0xf5uy; 0xccuy; 0x0euy; 0xe5uy] in *)

  (* let pk4 = createL [0x27uy; 0x81uy; 0x17uy; 0xfcuy; 0x14uy; 0x4cuy; 0x72uy; 0x34uy; *)
  (*          0x0fuy; 0x67uy; 0xd0uy; 0xf2uy; 0x31uy; 0x6euy; 0x83uy; 0x86uy; *)
  (*          0xceuy; 0xffuy; 0xbfuy; 0x2buy; 0x24uy; 0x28uy; 0xc9uy; 0xc5uy; *)
  (*          0x1fuy; 0xefuy; 0x7cuy; 0x59uy; 0x7fuy; 0x1duy; 0x42uy; 0x6euy] in *)

  (* let msg4 = createL [0x08uy; 0xb8uy; 0xb2uy; 0xb7uy; 0x33uy; 0x42uy; 0x42uy; 0x43uy; *)
  (*           0x76uy; 0x0fuy; 0xe4uy; 0x26uy; 0xa4uy; 0xb5uy; 0x49uy; 0x08uy; *)
  (*           0x63uy; 0x21uy; 0x10uy; 0xa6uy; 0x6cuy; 0x2fuy; 0x65uy; 0x91uy; *)
  (*           0xeauy; 0xbduy; 0x33uy; 0x45uy; 0xe3uy; 0xe4uy; 0xebuy; 0x98uy; *)
  (*           0xfauy; 0x6euy; 0x26uy; 0x4buy; 0xf0uy; 0x9euy; 0xfeuy; 0x12uy; *)
  (*           0xeeuy; 0x50uy; 0xf8uy; 0xf5uy; 0x4euy; 0x9fuy; 0x77uy; 0xb1uy; *)
  (*           0xe3uy; 0x55uy; 0xf6uy; 0xc5uy; 0x05uy; 0x44uy; 0xe2uy; 0x3fuy; *)
  (*           0xb1uy; 0x43uy; 0x3duy; 0xdfuy; 0x73uy; 0xbeuy; 0x84uy; 0xd8uy; *)
  (*           0x79uy; 0xdeuy; 0x7cuy; 0x00uy; 0x46uy; 0xdcuy; 0x49uy; 0x96uy; *)
  (*           0xd9uy; 0xe7uy; 0x73uy; 0xf4uy; 0xbcuy; 0x9euy; 0xfeuy; 0x57uy; *)
  (*           0x38uy; 0x82uy; 0x9auy; 0xdbuy; 0x26uy; 0xc8uy; 0x1buy; 0x37uy; *)
  (*           0xc9uy; 0x3auy; 0x1buy; 0x27uy; 0x0buy; 0x20uy; 0x32uy; 0x9duy; *)
  (*           0x65uy; 0x86uy; 0x75uy; 0xfcuy; 0x6euy; 0xa5uy; 0x34uy; 0xe0uy; *)
  (*           0x81uy; 0x0auy; 0x44uy; 0x32uy; 0x82uy; 0x6buy; 0xf5uy; 0x8cuy; *)
  (*           0x94uy; 0x1euy; 0xfbuy; 0x65uy; 0xd5uy; 0x7auy; 0x33uy; 0x8buy; *)
  (*           0xbduy; 0x2euy; 0x26uy; 0x64uy; 0x0fuy; 0x89uy; 0xffuy; 0xbcuy; *)
  (*           0x1auy; 0x85uy; 0x8euy; 0xfcuy; 0xb8uy; 0x55uy; 0x0euy; 0xe3uy; *)
  (*           0xa5uy; 0xe1uy; 0x99uy; 0x8buy; 0xd1uy; 0x77uy; 0xe9uy; 0x3auy; *)
  (*           0x73uy; 0x63uy; 0xc3uy; 0x44uy; 0xfeuy; 0x6buy; 0x19uy; 0x9euy; *)
  (*           0xe5uy; 0xd0uy; 0x2euy; 0x82uy; 0xd5uy; 0x22uy; 0xc4uy; 0xfeuy; *)
  (*           0xbauy; 0x15uy; 0x45uy; 0x2fuy; 0x80uy; 0x28uy; 0x8auy; 0x82uy; *)
  (*           0x1auy; 0x57uy; 0x91uy; 0x16uy; 0xecuy; 0x6duy; 0xaduy; 0x2buy; *)
  (*           0x3buy; 0x31uy; 0x0duy; 0xa9uy; 0x03uy; 0x40uy; 0x1auy; 0xa6uy; *)
  (*           0x21uy; 0x00uy; 0xabuy; 0x5duy; 0x1auy; 0x36uy; 0x55uy; 0x3euy; *)
  (*           0x06uy; 0x20uy; 0x3buy; 0x33uy; 0x89uy; 0x0cuy; 0xc9uy; 0xb8uy; *)
  (*           0x32uy; 0xf7uy; 0x9euy; 0xf8uy; 0x05uy; 0x60uy; 0xccuy; 0xb9uy; *)
  (*           0xa3uy; 0x9cuy; 0xe7uy; 0x67uy; 0x96uy; 0x7euy; 0xd6uy; 0x28uy; *)
  (*           0xc6uy; 0xaduy; 0x57uy; 0x3cuy; 0xb1uy; 0x16uy; 0xdbuy; 0xefuy; *)
  (*           0xefuy; 0xd7uy; 0x54uy; 0x99uy; 0xdauy; 0x96uy; 0xbduy; 0x68uy; *)
  (*           0xa8uy; 0xa9uy; 0x7buy; 0x92uy; 0x8auy; 0x8buy; 0xbcuy; 0x10uy; *)
  (*           0x3buy; 0x66uy; 0x21uy; 0xfcuy; 0xdeuy; 0x2buy; 0xecuy; 0xa1uy; *)
  (*           0x23uy; 0x1duy; 0x20uy; 0x6buy; 0xe6uy; 0xcduy; 0x9euy; 0xc7uy; *)
  (*           0xafuy; 0xf6uy; 0xf6uy; 0xc9uy; 0x4fuy; 0xcduy; 0x72uy; 0x04uy; *)
  (*           0xeduy; 0x34uy; 0x55uy; 0xc6uy; 0x8cuy; 0x83uy; 0xf4uy; 0xa4uy; *)
  (*           0x1duy; 0xa4uy; 0xafuy; 0x2buy; 0x74uy; 0xefuy; 0x5cuy; 0x53uy; *)
  (*           0xf1uy; 0xd8uy; 0xacuy; 0x70uy; 0xbduy; 0xcbuy; 0x7euy; 0xd1uy; *)
  (*           0x85uy; 0xceuy; 0x81uy; 0xbduy; 0x84uy; 0x35uy; 0x9duy; 0x44uy; *)
  (*           0x25uy; 0x4duy; 0x95uy; 0x62uy; 0x9euy; 0x98uy; 0x55uy; 0xa9uy; *)
  (*           0x4auy; 0x7cuy; 0x19uy; 0x58uy; 0xd1uy; 0xf8uy; 0xaduy; 0xa5uy; *)
  (*           0xd0uy; 0x53uy; 0x2euy; 0xd8uy; 0xa5uy; 0xaauy; 0x3fuy; 0xb2uy; *)
  (*           0xd1uy; 0x7buy; 0xa7uy; 0x0euy; 0xb6uy; 0x24uy; 0x8euy; 0x59uy; *)
  (*           0x4euy; 0x1auy; 0x22uy; 0x97uy; 0xacuy; 0xbbuy; 0xb3uy; 0x9duy; *)
  (*           0x50uy; 0x2fuy; 0x1auy; 0x8cuy; 0x6euy; 0xb6uy; 0xf1uy; 0xceuy; *)
  (*           0x22uy; 0xb3uy; 0xdeuy; 0x1auy; 0x1fuy; 0x40uy; 0xccuy; 0x24uy; *)
  (*           0x55uy; 0x41uy; 0x19uy; 0xa8uy; 0x31uy; 0xa9uy; 0xaauy; 0xd6uy; *)
  (*           0x07uy; 0x9cuy; 0xaduy; 0x88uy; 0x42uy; 0x5duy; 0xe6uy; 0xbduy; *)
  (*           0xe1uy; 0xa9uy; 0x18uy; 0x7euy; 0xbbuy; 0x60uy; 0x92uy; 0xcfuy; *)
  (*           0x67uy; 0xbfuy; 0x2buy; 0x13uy; 0xfduy; 0x65uy; 0xf2uy; 0x70uy; *)
  (*           0x88uy; 0xd7uy; 0x8buy; 0x7euy; 0x88uy; 0x3cuy; 0x87uy; 0x59uy; *)
  (*           0xd2uy; 0xc4uy; 0xf5uy; 0xc6uy; 0x5auy; 0xdbuy; 0x75uy; 0x53uy; *)
  (*           0x87uy; 0x8auy; 0xd5uy; 0x75uy; 0xf9uy; 0xfauy; 0xd8uy; 0x78uy; *)
  (*           0xe8uy; 0x0auy; 0x0cuy; 0x9buy; 0xa6uy; 0x3buy; 0xcbuy; 0xccuy; *)
  (*           0x27uy; 0x32uy; 0xe6uy; 0x94uy; 0x85uy; 0xbbuy; 0xc9uy; 0xc9uy; *)
  (*           0x0buy; 0xfbuy; 0xd6uy; 0x24uy; 0x81uy; 0xd9uy; 0x08uy; 0x9buy; *)
  (*           0xecuy; 0xcfuy; 0x80uy; 0xcfuy; 0xe2uy; 0xdfuy; 0x16uy; 0xa2uy; *)
  (*           0xcfuy; 0x65uy; 0xbduy; 0x92uy; 0xdduy; 0x59uy; 0x7buy; 0x07uy; *)
  (*           0x07uy; 0xe0uy; 0x91uy; 0x7auy; 0xf4uy; 0x8buy; 0xbbuy; 0x75uy; *)
  (*           0xfeuy; 0xd4uy; 0x13uy; 0xd2uy; 0x38uy; 0xf5uy; 0x55uy; 0x5auy; *)
  (*           0x7auy; 0x56uy; 0x9duy; 0x80uy; 0xc3uy; 0x41uy; 0x4auy; 0x8duy; *)
  (*           0x08uy; 0x59uy; 0xdcuy; 0x65uy; 0xa4uy; 0x61uy; 0x28uy; 0xbauy; *)
  (*           0xb2uy; 0x7auy; 0xf8uy; 0x7auy; 0x71uy; 0x31uy; 0x4fuy; 0x31uy; *)
  (*           0x8cuy; 0x78uy; 0x2buy; 0x23uy; 0xebuy; 0xfeuy; 0x80uy; 0x8buy; *)
  (*           0x82uy; 0xb0uy; 0xceuy; 0x26uy; 0x40uy; 0x1duy; 0x2euy; 0x22uy; *)
  (*           0xf0uy; 0x4duy; 0x83uy; 0xd1uy; 0x25uy; 0x5duy; 0xc5uy; 0x1auy; *)
  (*           0xdduy; 0xd3uy; 0xb7uy; 0x5auy; 0x2buy; 0x1auy; 0xe0uy; 0x78uy; *)
  (*           0x45uy; 0x04uy; 0xdfuy; 0x54uy; 0x3auy; 0xf8uy; 0x96uy; 0x9buy; *)
  (*           0xe3uy; 0xeauy; 0x70uy; 0x82uy; 0xffuy; 0x7fuy; 0xc9uy; 0x88uy; *)
  (*           0x8cuy; 0x14uy; 0x4duy; 0xa2uy; 0xafuy; 0x58uy; 0x42uy; 0x9euy; *)
  (*           0xc9uy; 0x60uy; 0x31uy; 0xdbuy; 0xcauy; 0xd3uy; 0xdauy; 0xd9uy; *)
  (*           0xafuy; 0x0duy; 0xcbuy; 0xaauy; 0xafuy; 0x26uy; 0x8cuy; 0xb8uy; *)
  (*           0xfcuy; 0xffuy; 0xeauy; 0xd9uy; 0x4fuy; 0x3cuy; 0x7cuy; 0xa4uy; *)
  (*           0x95uy; 0xe0uy; 0x56uy; 0xa9uy; 0xb4uy; 0x7auy; 0xcduy; 0xb7uy; *)
  (*           0x51uy; 0xfbuy; 0x73uy; 0xe6uy; 0x66uy; 0xc6uy; 0xc6uy; 0x55uy; *)
  (*           0xaduy; 0xe8uy; 0x29uy; 0x72uy; 0x97uy; 0xd0uy; 0x7auy; 0xd1uy; *)
  (*           0xbauy; 0x5euy; 0x43uy; 0xf1uy; 0xbcuy; 0xa3uy; 0x23uy; 0x01uy; *)
  (*           0x65uy; 0x13uy; 0x39uy; 0xe2uy; 0x29uy; 0x04uy; 0xccuy; 0x8cuy; *)
  (*           0x42uy; 0xf5uy; 0x8cuy; 0x30uy; 0xc0uy; 0x4auy; 0xafuy; 0xdbuy; *)
  (*           0x03uy; 0x8duy; 0xdauy; 0x08uy; 0x47uy; 0xdduy; 0x98uy; 0x8duy; *)
  (*           0xcduy; 0xa6uy; 0xf3uy; 0xbfuy; 0xd1uy; 0x5cuy; 0x4buy; 0x4cuy; *)
  (*           0x45uy; 0x25uy; 0x00uy; 0x4auy; 0xa0uy; 0x6euy; 0xefuy; 0xf8uy; *)
  (*           0xcauy; 0x61uy; 0x78uy; 0x3auy; 0xacuy; 0xecuy; 0x57uy; 0xfbuy; *)
  (*           0x3duy; 0x1fuy; 0x92uy; 0xb0uy; 0xfeuy; 0x2fuy; 0xd1uy; 0xa8uy; *)
  (*           0x5fuy; 0x67uy; 0x24uy; 0x51uy; 0x7buy; 0x65uy; 0xe6uy; 0x14uy; *)
  (*           0xaduy; 0x68uy; 0x08uy; 0xd6uy; 0xf6uy; 0xeeuy; 0x34uy; 0xdfuy; *)
  (*           0xf7uy; 0x31uy; 0x0fuy; 0xdcuy; 0x82uy; 0xaeuy; 0xbfuy; 0xd9uy; *)
  (*           0x04uy; 0xb0uy; 0x1euy; 0x1duy; 0xc5uy; 0x4buy; 0x29uy; 0x27uy; *)
  (*           0x09uy; 0x4buy; 0x2duy; 0xb6uy; 0x8duy; 0x6fuy; 0x90uy; 0x3buy; *)
  (*           0x68uy; 0x40uy; 0x1auy; 0xdeuy; 0xbfuy; 0x5auy; 0x7euy; 0x08uy; *)
  (*           0xd7uy; 0x8fuy; 0xf4uy; 0xefuy; 0x5duy; 0x63uy; 0x65uy; 0x3auy; *)
  (*           0x65uy; 0x04uy; 0x0cuy; 0xf9uy; 0xbfuy; 0xd4uy; 0xacuy; 0xa7uy; *)
  (*           0x98uy; 0x4auy; 0x74uy; 0xd3uy; 0x71uy; 0x45uy; 0x98uy; 0x67uy; *)
  (*           0x80uy; 0xfcuy; 0x0buy; 0x16uy; 0xacuy; 0x45uy; 0x16uy; 0x49uy; *)
  (*           0xdeuy; 0x61uy; 0x88uy; 0xa7uy; 0xdbuy; 0xdfuy; 0x19uy; 0x1fuy; *)
  (*           0x64uy; 0xb5uy; 0xfcuy; 0x5euy; 0x2auy; 0xb4uy; 0x7buy; 0x57uy; *)
  (*           0xf7uy; 0xf7uy; 0x27uy; 0x6cuy; 0xd4uy; 0x19uy; 0xc1uy; 0x7auy; *)
  (*           0x3cuy; 0xa8uy; 0xe1uy; 0xb9uy; 0x39uy; 0xaeuy; 0x49uy; 0xe4uy; *)
  (*           0x88uy; 0xacuy; 0xbauy; 0x6buy; 0x96uy; 0x56uy; 0x10uy; 0xb5uy; *)
  (*           0x48uy; 0x01uy; 0x09uy; 0xc8uy; 0xb1uy; 0x7buy; 0x80uy; 0xe1uy; *)
  (*           0xb7uy; 0xb7uy; 0x50uy; 0xdfuy; 0xc7uy; 0x59uy; 0x8duy; 0x5duy; *)
  (*           0x50uy; 0x11uy; 0xfduy; 0x2duy; 0xccuy; 0x56uy; 0x00uy; 0xa3uy; *)
  (*           0x2euy; 0xf5uy; 0xb5uy; 0x2auy; 0x1euy; 0xccuy; 0x82uy; 0x0euy; *)
  (*           0x30uy; 0x8auy; 0xa3uy; 0x42uy; 0x72uy; 0x1auy; 0xacuy; 0x09uy; *)
  (*           0x43uy; 0xbfuy; 0x66uy; 0x86uy; 0xb6uy; 0x4buy; 0x25uy; 0x79uy; *)
  (*           0x37uy; 0x65uy; 0x04uy; 0xccuy; 0xc4uy; 0x93uy; 0xd9uy; 0x7euy; *)
  (*           0x6auy; 0xeduy; 0x3fuy; 0xb0uy; 0xf9uy; 0xcduy; 0x71uy; 0xa4uy; *)
  (*           0x3duy; 0xd4uy; 0x97uy; 0xf0uy; 0x1fuy; 0x17uy; 0xc0uy; 0xe2uy; *)
  (*           0xcbuy; 0x37uy; 0x97uy; 0xaauy; 0x2auy; 0x2fuy; 0x25uy; 0x66uy; *)
  (*           0x56uy; 0x16uy; 0x8euy; 0x6cuy; 0x49uy; 0x6auy; 0xfcuy; 0x5fuy; *)
  (*           0xb9uy; 0x32uy; 0x46uy; 0xf6uy; 0xb1uy; 0x11uy; 0x63uy; 0x98uy; *)
  (*           0xa3uy; 0x46uy; 0xf1uy; 0xa6uy; 0x41uy; 0xf3uy; 0xb0uy; 0x41uy; *)
  (*           0xe9uy; 0x89uy; 0xf7uy; 0x91uy; 0x4fuy; 0x90uy; 0xccuy; 0x2cuy; *)
  (*           0x7fuy; 0xffuy; 0x35uy; 0x78uy; 0x76uy; 0xe5uy; 0x06uy; 0xb5uy; *)
  (*           0x0duy; 0x33uy; 0x4buy; 0xa7uy; 0x7cuy; 0x22uy; 0x5buy; 0xc3uy; *)
  (*           0x07uy; 0xbauy; 0x53uy; 0x71uy; 0x52uy; 0xf3uy; 0xf1uy; 0x61uy; *)
  (*           0x0euy; 0x4euy; 0xafuy; 0xe5uy; 0x95uy; 0xf6uy; 0xd9uy; 0xd9uy; *)
  (*           0x0duy; 0x11uy; 0xfauy; 0xa9uy; 0x33uy; 0xa1uy; 0x5euy; 0xf1uy; *)
  (*           0x36uy; 0x95uy; 0x46uy; 0x86uy; 0x8auy; 0x7fuy; 0x3auy; 0x45uy; *)
  (*           0xa9uy; 0x67uy; 0x68uy; 0xd4uy; 0x0fuy; 0xd9uy; 0xd0uy; 0x34uy; *)
  (*           0x12uy; 0xc0uy; 0x91uy; 0xc6uy; 0x31uy; 0x5cuy; 0xf4uy; 0xfduy; *)
  (*           0xe7uy; 0xcbuy; 0x68uy; 0x60uy; 0x69uy; 0x37uy; 0x38uy; 0x0duy; *)
  (*           0xb2uy; 0xeauy; 0xaauy; 0x70uy; 0x7buy; 0x4cuy; 0x41uy; 0x85uy; *)
  (*           0xc3uy; 0x2euy; 0xdduy; 0xcduy; 0xd3uy; 0x06uy; 0x70uy; 0x5euy; *)
  (*           0x4duy; 0xc1uy; 0xffuy; 0xc8uy; 0x72uy; 0xeeuy; 0xeeuy; 0x47uy; *)
  (*           0x5auy; 0x64uy; 0xdfuy; 0xacuy; 0x86uy; 0xabuy; 0xa4uy; 0x1cuy; *)
  (*           0x06uy; 0x18uy; 0x98uy; 0x3fuy; 0x87uy; 0x41uy; 0xc5uy; 0xefuy; *)
  (*           0x68uy; 0xd3uy; 0xa1uy; 0x01uy; 0xe8uy; 0xa3uy; 0xb8uy; 0xcauy; *)
  (*           0xc6uy; 0x0cuy; 0x90uy; 0x5cuy; 0x15uy; 0xfcuy; 0x91uy; 0x08uy; *)
  (*           0x40uy; 0xb9uy; 0x4cuy; 0x00uy; 0xa0uy; 0xb9uy; 0xd0uy] in *)

  (* let sig4 = createL [0x0auy; 0xabuy; 0x4cuy; 0x90uy; 0x05uy; 0x01uy; 0xb3uy; 0xe2uy; *)
  (*           0x4duy; 0x7cuy; 0xdfuy; 0x46uy; 0x63uy; 0x32uy; 0x6auy; 0x3auy; *)
  (*           0x87uy; 0xdfuy; 0x5euy; 0x48uy; 0x43uy; 0xb2uy; 0xcbuy; 0xdbuy; *)
  (*           0x67uy; 0xcbuy; 0xf6uy; 0xe4uy; 0x60uy; 0xfeuy; 0xc3uy; 0x50uy; *)
  (*           0xaauy; 0x53uy; 0x71uy; 0xb1uy; 0x50uy; 0x8fuy; 0x9fuy; 0x45uy; *)
  (*           0x28uy; 0xecuy; 0xeauy; 0x23uy; 0xc4uy; 0x36uy; 0xd9uy; 0x4buy; *)
  (*           0x5euy; 0x8fuy; 0xcduy; 0x4fuy; 0x68uy; 0x1euy; 0x30uy; 0xa6uy; *)
  (*           0xacuy; 0x00uy; 0xa9uy; 0x70uy; 0x4auy; 0x18uy; 0x8auy; 0x03uy] in *)
  
  let pk1' = create 0uy 32ul in
  let pk2' = create 0uy 32ul in
  let pk3' = create 0uy 32ul in
  Ed25519.secret_to_public pk1' sk1;
  Ed25519.secret_to_public pk2' sk2;
  Ed25519.secret_to_public pk3' sk3;
  TestLib.compare_and_print (C.string_of_literal "Public key 1 generation") pk1 pk1' 32ul;
  TestLib.compare_and_print (C.string_of_literal "Public key 2 generation") pk2 pk2' 32ul;
  TestLib.compare_and_print (C.string_of_literal "Public key 3 generation") pk3 pk3' 32ul;

  let sig1' = create 0uy 64ul in
  let sig2' = create 0uy 64ul in
  let sig3' = create 0uy 64ul in
  (* let sig4' = create 0uy 64ul in *)

  let ret = C.exit_success in
  let res = Ed25519.verify pk1 msg1 0ul sig1 in
  let ret =
    if res then (
      Ed25519.sign sig1' sk1 msg1 0ul;
      TestLib.compare_and_print (C.string_of_literal "Ed25519 sig1") sig1 sig1' 64ul;
      C.exit_success
    ) else C.exit_failure in

  let res = Ed25519.verify pk2 msg2 1ul sig2 in
  let ret =
    if res && (ret = C.exit_success) then (
      Ed25519.sign sig2' sk2 msg2 1ul;
      TestLib.compare_and_print (C.string_of_literal "Ed25519 sig2") sig2 sig2' 64ul;
      C.exit_success
    ) else C.exit_failure in

  let res = Ed25519.verify pk3 msg3 2ul sig3 in
  let ret =
    if res && (ret = C.exit_success) then (
      Ed25519.sign sig3' sk3 msg3 2ul;
      TestLib.compare_and_print (C.string_of_literal "Ed25519 sig3") sig3 sig3' 64ul;
      C.exit_success
    ) else C.exit_failure in

  (* let res = Ed25519.verify pk4 msg4 1023ul sig4 in *)
  (* let ret = *)
  (*   if res then ( *)
  (*     Ed25519.sign sig4' sk4 msg4 1023ul; *)
  (*     TestLib.compare_and_print (C.string_of_literal "Ed25519 sig4") sig4 sig4' 64ul; *)
  (*     C.exit_success *)
  (*   ) else C.exit_failure in *)

  pop_frame();
  ret
