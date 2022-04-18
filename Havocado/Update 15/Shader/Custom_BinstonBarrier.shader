//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom/BinstonBarrier" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_Color ("Color", Color) = (0,0,0,0)
_RimSpread ("Rim", Float) = 2
_IntersectSize ("Intersect Size", Float) = 0.5
_WaveSpeed ("Wave Speed", Float) = 6
_WaveSpread ("Wave Spread", Float) = -0.6
_WaveBrightness ("Wave Brightness", Float) = 1
}
SubShader {
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend One One, One One
  ZWrite Off
  Cull Off
  GpuProgramID 10234
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}