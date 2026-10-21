(lang dune 3.17)

(using directory-targets 0.1)

(name project_name)

(authors "project_name authors")

(package
 (name project_name)
 (synopsis "Eliom application")
 (depends
  ocsigen-dune-rules
  (eliom
   (>= 13.0.0))
  (ocsigen-ppx-rpc
   (>= 2.0))
  (ocsipersist-sqlite-config
   (>= 3.1))))

(dialect
 (name "eliom-server")
 (implementation
  (extension "eliom"))
 (interface
  (extension "eliomi")))

(formatting
 (enabled_for ocaml "eliom-server"))

(generate_opam_files true)
