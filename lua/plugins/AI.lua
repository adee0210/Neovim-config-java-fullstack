return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false,
    opts = {
      provider = "openrouter",
      vendors = {
        openrouter = {
          __inherited_from = "openai",
          api_key_name = "OPENROUTER_API_KEY",
          endpoint = "https://openrouter.ai/api/v1",
          model = "deepseek/deepseek-chat",
        },
      },
    },
    keys = {
      { "<leader>Cc", "<cmd>AvanteAsk<CR>", desc = "Mở Avante Chat" },
      { "<leader>Ca", "<cmd>AvanteAsk<CR>", mode = "v", desc = "Hỏi về đoạn văn bản/code đã chọn" },
      { "<leader>Cs", "<cmd>AvanteStatus<CR>", desc = "Xem trạng thái Avante" },
      { "<leader>Ct", "<cmd>AvanteToggle<CR>", desc = "Bật/tắt giao diện Avante" },
      { "<leader>Cr", "<cmd>AvanteRefresh<CR>", desc = "Làm mới kết nối hoặc nội dung Avante" },
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "zbirenbaum/copilot.lua",
      {
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            use_absolute_path = true,
          },
        },
      },
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
