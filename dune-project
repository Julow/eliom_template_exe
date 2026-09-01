(lang dune 3.17)

(using directory-targets 0.1)

(dialect
 (name "eliom-server")
 (implementation
  (extension "eliom"))
 (interface
  (extension "eliomi")))

(formatting
 (enabled_for ocaml "eliom-server"))
