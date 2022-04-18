//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Stix Games/Grass Dynamics/Mesh Normal Renderer" {
Properties {
_InfluenceStrength ("Influence Strength", Float) = 1
_BurnMap ("Burn Map", 2D) = "white" { }
_BurnStrength ("Burn Strength", Range(0, 1)) = 0
}
SubShader {
 LOD 100
 Tags { "RenderType" = "Opaque" }
 Pass {
  LOD 100
  Tags { "RenderType" = "Opaque" }
  Blend One One, DstColor Zero
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 49007
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