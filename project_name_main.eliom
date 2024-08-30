(** This is the main file if you are using static linking without config file.
    It is not used if you are using a config file and ocsigenserver *)

module%shared Project_name = Project_name

let%server _ =
  Ocsigen_server.start
    ~ports:[`All, 8080]
    ~veryverbose:()
    ~debugmode:true
    ~logdir:"local/var/log/project_name"
    ~datadir:"local/var/data/project_name"
    ~uploaddir:(Some "/tmp")
    ~usedefaulthostname:true
    ~command_pipe:"local/var/run/project_name-cmd"
    ~default_charset:(Some "utf-8")
    [ Ocsigen_server.host
      [Staticmod.run ~dir:"local/var/www/project_name" (); Eliom.run ()] ]
