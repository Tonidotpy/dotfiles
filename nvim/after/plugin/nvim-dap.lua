local dap = require('dap')

-- Python
dap.adapters.debugpy = {
    type = 'executable';
    command = 'python3';
    args = { '-m', 'debugpy.adapter' };
}
dap.configurations.python = {
    {
        type = 'python';
        request = 'launch';
        name = 'Launch file';
        program = "${file}";
    },
}
