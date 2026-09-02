(** This is the main file if you are using static linking without config file.
*)

let logdir = "local/var/log/project_name"
let datadir = "local/var/data/project_name"
let rundir = "local/var/run"
let staticdir = "local/var/www/project_name"

let () =
  Ocsigen_server.start
    ~ports:[`All, 8080]
    ~veryverbose:() ~debugmode:true ~logdir ~datadir ~uploaddir:(Some "/tmp")
    ~usedefaulthostname:true
    ~command_pipe:(Filename.concat rundir "project_name-cmd")
    ~default_charset:(Some "utf-8")
    [Ocsigen_server.host [Staticmod.run ~dir:staticdir (); Eliom.run ()]]
