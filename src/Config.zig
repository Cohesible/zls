//! DO NOT EDIT
//! Configuration options for ZLS.
//! If you want to add a config option edit
//! src/config_gen/config.json
//! GENERATED BY src/config_gen/config_gen.zig

/// Enables snippet completions when the client also supports them
enable_snippets: bool = true,

/// Whether to enable function argument placeholder completions
enable_argument_placeholders: bool = true,

/// Whether to enable build-on-save diagnostics
enable_build_on_save: bool = false,

/// Select which step should be executed on build-on-save
build_on_save_step: []const u8 = "install",

/// Whether to automatically fix errors on save. Currently supports adding and removing discards.
enable_autofix: bool = false,

/// Set level of semantic tokens. Partial only includes information that requires semantic analysis.
semantic_tokens: enum {
    none,
    partial,
    full,
} = .full,

/// Enables inlay hint support when the client also supports it
enable_inlay_hints: bool = true,

/// Enable inlay hints for variable types
inlay_hints_show_variable_type_hints: bool = true,

/// Enable inlay hints for fields in struct and union literals
inlay_hints_show_struct_literal_field_type: bool = true,

/// Enable inlay hints for parameter names
inlay_hints_show_parameter_name: bool = true,

/// Enable inlay hints for builtin functions
inlay_hints_show_builtin: bool = true,

/// Don't show inlay hints for single argument calls
inlay_hints_exclude_single_argument: bool = true,

/// Hides inlay hints when parameter name matches the identifier (e.g. foo: foo)
inlay_hints_hide_redundant_param_names: bool = false,

/// Hides inlay hints when parameter name matches the last token of a parameter node (e.g. foo: bar.foo, foo: &foo)
inlay_hints_hide_redundant_param_names_last_token: bool = false,

/// Enables warnings for style guideline mismatches
warn_style: bool = false,

/// Whether to highlight global var declarations
highlight_global_var_declarations: bool = false,

/// Whether to use the comptime interpreter
dangerous_comptime_experiments_do_not_enable: bool = false,

/// When true, skips searching for references in std. Improves lookup speed for functions in user's code. Renaming and go-to-definition will continue to work as is
skip_std_references: bool = false,

/// Favor using `zig ast-check` instead of ZLS's fork
prefer_ast_check_as_child_process: bool = true,

/// Path to 'builtin;' useful for debugging, automatically set if let null
builtin_path: ?[]const u8 = null,

/// Zig library path, e.g. `/path/to/zig/lib/zig`, used to analyze std library imports
zig_lib_path: ?[]const u8 = null,

/// Zig executable path, e.g. `/path/to/zig/zig`, used to run the custom build runner. If `null`, zig is looked up in `PATH`. Will be used to infer the zig standard library path if none is provided
zig_exe_path: ?[]const u8 = null,

/// Path to the `build_runner.zig` file provided by ZLS. null is equivalent to `${executable_directory}/build_runner.zig`
build_runner_path: ?[]const u8 = null,

/// Path to a directory that will be used as zig's cache. null is equivalent to `${KnownFolders.Cache}/zls`
global_cache_path: ?[]const u8 = null,

/// When false, the function signature of completion results is hidden. Improves readability in some editors
completion_label_details: bool = true,

/// Path to a Zig file for building native JavaScript modules
js_lib_path: ?[]const u8 = null,

// DO NOT EDIT
