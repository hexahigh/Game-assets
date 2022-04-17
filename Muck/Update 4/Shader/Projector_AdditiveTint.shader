//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Projector/AdditiveTint" {
Properties {
_Color ("Tint Color", Color) = (1,1,1,1)
_Attenuation ("Falloff", Range(0, 1)) = 1
_ShadowTex ("Cookie", 2D) = "gray" { }
}
SubShader {
 Tags { "QUEUE" = "Overlay" }
 Pass {
  Tags { "QUEUE" = "Overlay" }
  Blend SrcAlpha One, SrcAlpha One
  ColorMask RGB 0
  ZWrite Off
  Offset -1, -1
  GpuProgramID 36630
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