return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "php" } },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              format = {
                enable = true,
                braces = "k&r",
              },
              diagnostics = {
                enable = true,
              },
              stubs = {
                "apache",
                "bcmath",
                "bz2",
                "calendar",
                "com_dotnet",
                "Core",
                "ctype",
                "curl",
                "date",
                "dba",
                "dom",
                "enchant",
                "exif",
                "FFI",
                "fileinfo",
                "filter",
                "fpm",
                "ftp",
                "gd",
                "gettext",
                "gmp",
                "hash",
                "iconv",
                "imap",
                "intl",
                "json",
                "ldap",
                "libxml",
                "mbstring",
                "meta",
                "mysqli",
                "oci8",
                "odbc",
                "openssl",
                "pcntl",
                "pcre",
                "PDO",
                "pdo_ibm",
                "pdo_mysql",
                "pdo_pgsql",
                "pdo_sqlite",
                "pgsql",
                "Phar",
                "posix",
                "pspell",
                "readline",
                "Reflection",
                "session",
                "shmop",
                "SimpleXML",
                "snmp",
                "soap",
                "sockets",
                "sodium",
                "SPL",
                "sqlite3",
                "standard",
                "superglobals",
                "sysvmsg",
                "sysvsem",
                "sysvshm",
                "tidy",
                "tokenizer",
                "xml",
                "xmlreader",
                "xmlrpc",
                "xmlwriter",
                "xsl",
                "Zend OPcache",
                "zip",
                "zlib",
                "wordpress",
                "phpunit",
              },
            },
          },
        },
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "phpcs",
        "php-cs-fixer",
        "phpcbf",
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        -- php = { "phpcs" },
        -- php = { "psalm" },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    opts = function()
      local dap = require("dap")
      local path = require("mason-registry").get_package("php-debug-adapter"):get_install_path()
      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = { path .. "/extension/out/phpDebug.js" },
      }
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters = {
        prettier = {},
        ["php-cs-fixer"] = {
          command = "php-cs-fixer",
          args = {
            "fix",
            "--rules=@PSR12", -- Formatting preset. Other presets are available, see the php-cs-fixer docs.
            "$FILENAME",
            -- "--config=/Users/sebastianalfaro/.config/nvim/lua/config/ft-config/cs-fixer-config.php",
          },
          stdin = false,
        },
        phpcbf = {
          command = "phpcbf",
          args = {
            "--config=;a",
          },
        },
        ["pretty-php"] = {
          command = "pretty-php",
        },
        -- ["easy-coding-standard"] = {
        --   command = "",
        -- },
        ["blade-formatter"] = {
          command = "blade-formatter",
          -- args = {
          --   "--config=/Users/sebastianalfaro/.config/nvim/lua/config/blame/.bladeformatterrc.json",
          -- },
          -- stdin = false,
        },
      },
      formatters_by_ft = {
        php = {
          -- "intelephense",
          -- "blade-formatter",
          -- "easy-coding-standard",
          -- "htmlbeautifier",
          -- "php-cs-fixer",
          -- "phpcbf",
          -- "pretty-php",
        },
      },
      notify_on_error = true,
    },
  },
}
