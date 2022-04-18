//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "StylizedWater/Desktop" {
Properties {
_WaterColor ("Water Color", Color) = (0.1176471,0.6348885,1,0)
_WaterShallowColor ("WaterShallowColor", Color) = (0.4191176,0.7596349,1,0)
_Wavetint ("Wave tint", Range(-1, 1)) = 0.1
_FresnelColor ("Fresnel Color", Color) = (1,1,1,0.484)
_RimColor ("Rim Color", Color) = (1,1,1,0.5019608)
_NormalStrength ("NormalStrength", Range(0, 1)) = 0.25
_Transparency ("Transparency", Range(0, 1)) = 0.75
_Glossiness ("Glossiness", Range(0, 1)) = 0.85
_Fresnelexponent ("Fresnel exponent", Float) = 4
_ReflectionStrength ("Reflection Strength", Range(0, 1)) = 0
_ReflectionFresnel ("Reflection Fresnel", Range(2, 10)) = 5
_RefractionAmount ("Refraction Amount", Range(0, 0.2)) = 0.05
_ReflectionRefraction ("ReflectionRefraction", Range(0, 0.2)) = 0.05
[Toggle] _Worldspacetiling ("Worldspace tiling", Float) = 1
_NormalTiling ("NormalTiling", Range(0, 1)) = 0.9
_EdgeFade ("EdgeFade", Range(0.01, 3)) = 0.2448298
_RimSize ("Rim Size", Range(0, 20)) = 6
_Rimfalloff ("Rim falloff", Range(0.1, 50)) = 10
_Rimtiling ("Rim tiling", Float) = 0.5
_FoamOpacity ("FoamOpacity", Range(-1, 1)) = 0.05
_FoamDistortion ("FoamDistortion", Range(0, 3)) = 0.45
[IntRange] _UseIntersectionFoam ("UseIntersectionFoam", Range(0, 1)) = 0
_FoamSpeed ("FoamSpeed", Range(0, 1)) = 0.1
_FoamSize ("FoamSize", Float) = 0
_FoamTiling ("FoamTiling", Float) = 0.05
_Depth ("Depth", Range(0, 100)) = 15
_Wavesspeed ("Waves speed", Range(0, 10)) = 0.75
_WaveHeight ("Wave Height", Range(0, 1)) = 0.05
_WaveFoam ("Wave Foam", Range(0, 10)) = 0
_WaveSize ("Wave Size", Range(0, 10)) = 0.1
_WaveDirection ("WaveDirection", Vector) = (1,0,0,0)
_Normals ("Normals", 2D) = "bump" { }
_Shadermap ("Shadermap", 2D) = "black" { }
_RimDistortion ("RimDistortion", Range(0, 0.2)) = 0.1
_GradientTex ("GradientTex", 2D) = "gray" { }
_MacroBlendDistance ("MacroBlendDistance", Range(250, 3000)) = 2000
[Toggle(_SECONDARY_WAVES_ON)] _SECONDARY_WAVES ("SECONDARY_WAVES", Float) = 0
[Toggle(_MACRO_WAVES_ON)] _MACRO_WAVES ("MACRO_WAVES", Float) = 0
_ENABLE_GRADIENT ("_ENABLE_GRADIENT", Range(0, 1)) = 0
[Toggle] _ENABLE_SHADOWS ("ENABLE_SHADOWS", Float) = 0
[Toggle] _ENABLE_VC ("ENABLE_VC", Float) = 0
[Toggle] _Unlit ("Unlit", Float) = 0
[Toggle(_LIGHTING_ON)] _LIGHTING ("LIGHTING", Float) = 1
[Toggle] _USE_VC_INTERSECTION ("USE_VC_INTERSECTION", Float) = 0
_Metallicness ("Metallicness", Range(0, 1)) = 0
_texcoord ("", 2D) = "white" { }
__dirty ("", Float) = 1
}
SubShader {
 LOD 200
 Tags { "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent+0" "RenderType" = "Transparent" }
 GrabPass {
  "_BeforeWater"
}
 Pass {
  Name "FORWARD"
  LOD 200
  Tags { "FORCENOSHADOWCASTING" = "true" "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "FORWARDBASE" "QUEUE" = "Transparent+0" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask RGB 0
  ZWrite Off
  GpuProgramID 53122
Program "vp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTPROBE_SH" "VERTEXLIGHT_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "LIGHTPROBE_SH" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "LIGHTMAP_ON" "LIGHTMAP_SHADOW_MIXING" "LIGHTPROBE_SH" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" "_LIGHTING_ON" "_SECONDARY_WAVES_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
Fallback "Diffuse"
}