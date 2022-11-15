require('telescope').setup{ 
    defaults = { 
        file_ignore_patterns = {
            "vendor", 
            "node_modules",
            "nova/public",
            "public/nova-assets",
            "public/js" 
        } 
    } 
}
