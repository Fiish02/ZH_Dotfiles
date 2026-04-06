# =============================================================================
# 模块化 Zsh 配置 - 主入口文件
# =============================================================================

# 🚀 配置文件路径 - 直接指向 dotfiles
ZSH_CONFIG_DIR="${HOME}/.zsh/config"

# 📝 模块加载函数
load_config() {
    local config_file="$1"
    local config_path="${ZSH_CONFIG_DIR}/${config_file}"

    if [[ -f "$config_path" ]]; then
        source "$config_path"
    else
        echo "⚠️  Config file not found: $config_path"
    fi
}

# # 🔄 按顺序加载配置模块
# echo "🚀 Loading Zsh configuration modules..."

# 1. 性能监控和基础设置 (必须最先加载)
load_config "performance.zsh"

# 2. 环境变量和PATH配置
load_config "environment.zsh"

# 3. 插件管理 (依赖性能监控函数)
load_config "plugins.zsh"

# 4. 补全系统配置
load_config "completion.zsh"

# 5. 别名配置
load_config "aliases.zsh"

# 6. fzf 配置 一个快速、通用的命令行模糊搜索工具
load_config "fzf.zsh"

# 7. 延迟加载功能 (最后加载)
load_config "lazy-loading.zsh"

# # 🎉 加载完成提示
# echo "✅ Zsh configuration loaded successfully!"

# 🧹 清理临时函数
unfunction load_config
