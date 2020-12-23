open Cmdliner

let tek () =
  Printf.printf "Tek is a pdf manager app\n"

let tek_t =
  Term.(const tek $ const ())

let info =
  let doc = "Manage large amount of pdf with ease" in
  let man = [
    `S Manpage.s_bugs;
    `P "Email bug reports to <arthur correnson at arthur.correnson@ens-rennes.fr>." ]
  in
  Term.info "tek" ~version:"%‌%VERSION%%" ~doc ~exits:Term.default_exits ~man

let () =
  Term.exit @@ Term.eval (tek_t, info)
