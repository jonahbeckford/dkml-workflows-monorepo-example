(** Menhir rules *)

open Import

(** Return the list of modules that are generated by this stanza. *)
val module_names : Dune_file.Menhir.t -> Module_name.t list

(** Generate the rules for a [(menhir ...)] stanza. *)
val gen_rules :
  dir:Path.Build.t -> Compilation_context.t -> Dune_file.Menhir.t -> unit Memo.t
