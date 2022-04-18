//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Skybox/Cubemap Extended" {
Properties {
_IsStandardPipeline ("_IsStandardPipeline", Float) = 1
[StyledBanner(Skybox Cubemap Extended)] _SkyboxExtended ("< SkyboxExtended >", Float) = 1
[StyledCategory(Cubemap, 5, 10)] _Cubemapp ("[ Cubemapp ]", Float) = 1
_Tex ("Cubemap (HDR)", Cube) = "black" { }
_Exposure ("Cubemap Exposure", Range(0, 8)) = 1
_TintColor ("Cubemap Tint Color", Color) = (0.5,0.5,0.5,1)
_CubemapPosition ("Cubemap Position", Float) = 0
[StyledCategory(Rotation)] _Rotationn ("[ Rotationn ]", Float) = 1
[Toggle(_ENABLEROTATION_ON)] _EnableRotation ("Enable Rotation", Float) = 0
[IntRange] [Space(10)] _Rotation ("Rotation", Range(0, 360)) = 0
_RotationSpeed ("Rotation Speed", Float) = 1
[StyledCategory(Fog)] _Fogg ("[ Fogg ]", Float) = 1
[Toggle(_ENABLEFOG_ON)] _EnableFog ("Enable Fog", Float) = 0
[StyledMessage(Info, The fog color is controlled by the fog color set in the Lighting panel., _EnableFog, 1, 10, 0)] _FogMessage ("# FogMessage", Float) = 0
[Space(10)] _FogIntensity ("Fog Intensity", Range(0, 1)) = 1
_FogHeight ("Fog Height", Range(0, 1)) = 1
_FogSmoothness ("Fog Smoothness", Range(0.01, 1)) = 0.01
_FogFill ("Fog Fill", Range(0, 1)) = 0.5
_Tex_HDR ("DecodeInstructions", Vector) = (0,0,0,0)
[ASEEnd] _FogPosition ("Fog Position", Float) = 0
}
SubShader {
 Tags { "QUEUE" = "Background" "RenderType" = "Background" }
 Pass {
  Name "Unlit"
  Tags { "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "Background" "RenderType" = "Background" }
  ZWrite Off
  Cull Off
  GpuProgramID 63236
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ENABLEFOG_ON" "_ENABLEROTATION_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Local Keywords { "_ENABLEFOG_ON" "_ENABLEROTATION_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Skybox/Cubemap"
CustomEditor "SkyboxExtendedShaderGUI"
}