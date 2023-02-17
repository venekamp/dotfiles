require("trouble").setup {
  vim.keymap.set("n", "<F12>", ":TroubleToggle<CR>" ),
}

-- jump to the next item, skipping the groups
require("trouble").next({skip_groups = true, jump = true});

-- jump to the previous item, skipping the groups
require("trouble").previous({skip_groups = true, jump = true});

-- jump to the first item, skipping the groups
require("trouble").first({skip_groups = true, jump = true});

-- jump to the last item, skipping the groups
require("trouble").last({skip_groups = true, jump = true});
