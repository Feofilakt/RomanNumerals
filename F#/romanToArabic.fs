let (|IXCM|VLD|) s =
    let i = Array.findIndex ((=) s) [|'I';'V';'X';'L';'C';'D';'M'|]
    if i%2 = 0 then IXCM (i/2) else VLD (i/2)

let rec sum = function
    | IXCM r1 :: IXCM r2 :: IXCM r3 :: tail when r1 = r2 && r1 = r3 -> 3 * pown 10 r1 + group tail r1
    | IXCM r1 :: IXCM r2 :: tail when r1 = r2 -> 2 * pown 10 r1 + group tail r1
    | IXCM r :: tail -> pown 10 r + group tail r
    | _ -> failwith "Number is wrong."

and group list prevrank =
    match list with
    | [] -> 0
    | IXCM r1 :: VLD r2 :: tail when r1 = r2 && r1 < prevrank -> 4 * pown 10 r1 + group tail r1
    | IXCM r1 :: IXCM r2 :: tail when r1+1 = r2 && r1 < prevrank -> 9 * pown 10 r1 + group tail r1
    | VLD r1 :: (IXCM r2 as a) :: tail when r1 = r2 && r1 < prevrank -> 5 * pown 10 r1 + sum (a::tail)
    | VLD r :: tail when r < prevrank -> 5 * pown 10 r + group tail r
    | (IXCM r as a) :: tail when r < prevrank -> sum (a::tail)
    | _ -> failwith "Number is wrong."

let romanToArabic roman = group [for c in roman -> c] 4