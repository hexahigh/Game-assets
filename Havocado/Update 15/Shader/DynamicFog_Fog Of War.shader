//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "DynamicFog/Fog Of War" {
Properties {
_MainTex ("Base (RGBA)", 2D) = "white" { }
_NoiseTex ("Noise (RGB)", 2D) = "white" { }
_Color ("Color", Color) = (1,1,1,1)
_Speed ("Speed", Range(0, 0.1)) = 0.002
_Direction ("Direction", Vector) = (1,1,0,1)
_Scale1 ("Scale 1", Range(1, 10)) = 8
_Scale2 ("Scale 2", Range(1, 10)) = 2
_FogOfWarData ("Data", Vector) = (0,0,2000,2000)
}
SubShader {
 LOD 200
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 200
  Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  GpuProgramID 53267
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