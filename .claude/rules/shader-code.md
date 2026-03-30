---
paths:
  - "src/shaders/**"
  - "assets/shaders/**"
---

# Metal Shader Code Rules (iOS)

- File naming: `lowercase_underscore.metal` (e.g., `particle_system.metal`)
- All vertex/fragment functions named: `[effect]_vertex`, `[effect]_fragment`
- Use `half` precision where possible on mobile — better performance on Apple GPU
- Document all buffer indices and texture indices with named constants
- Include performance budget comment in shader file header
- Test on oldest supported device — shader features vary by GPU family
- Use `[[function_constant]]` for conditional compilation instead of if/else

## References
- Metal: https://developer.apple.com/documentation/metal
- Metal Feature Set Tables: https://developer.apple.com/metal/Metal-Feature-Set-Tables.pdf

## Template

```metal
// particle_system.metal
// Performance budget: <0.5ms on A14+

#include <metal_stdlib>
using namespace metal;

constant uint BufferIndexUniforms = 0;

fragment half4 particle_fragment(/* ... */) {
    return half4(1.0h, 1.0h, 1.0h, 1.0h);
}
```
