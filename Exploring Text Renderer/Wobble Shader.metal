//
//  Wobble Shader.metal
//  Exploring Text Renderer
//
//  Created by Ron Erez on 21/06/2024.
//

#include <metal_stdlib>
using namespace metal;

[[ stitchable ]] float2 wobble(float2 position, float amplitude) {
    return float2(position.x, position.y + amplitude * sin(position.x));
}
