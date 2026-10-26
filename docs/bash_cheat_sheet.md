# Find
```bash
find . -name "*.cpp" -o -name "*.hpp" -o -name "*.cc" -o -name "*.cxx" -o -name "*.vert" -o -name "*.frag"
find . -type f ( -name ".cpp" -o -name ".hpp" -o -name ".cc" -o -name ".cxx" -o -name ".vert" -o -name ".frag" ) -not -path "./vcpkg/*" -print0 | xargs -0 --no-run-if-empty clang-format --dry-run --Werror
```
