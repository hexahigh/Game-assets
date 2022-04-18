//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Stylized/Water" {
Properties {
[Header(Densities)] _DepthDensity ("Depth", Range(0, 1)) = 0.5
_DistanceDensity ("Distance", Range(0, 1)) = 0.1
[Header(Waves)] _WaveNormalMap ("Normal Map", 2D) = "bump" { }
_WaveNormalScale ("Scale", Float) = 10
_WaveNormalSpeed ("Speed", Float) = 1
[Header(Base Color)] _ShallowColor ("Shallow", Color) = (0.44,0.95,0.36,1)
_DeepColor ("Deep", Color) = (0,0.05,0.19,1)
_FarColor ("Far", Color) = (0.04,0.27,0.75,1)
[Header(Reflections)] _ReflectionContribution ("Contribution", Range(0, 1)) = 1
[Header(Subsurface Scattering)] _SSSColor ("Color", Color) = (1,1,1,1)
[Header(Foam)] _FoamContribution ("Contribution", Range(0, 1)) = 1
_FoamTexture ("Texture", 2D) = "black" { }
_FoamScale ("Scale", Float) = 1
_FoamSpeed ("Speed", Float) = 1
_FoamNoiseScale ("Noise Contribution", Range(0, 1)) = 0.5
[Header(Sun Specular)] _SunSpecularColor ("Color", Color) = (1,1,1,1)
_SunSpecularExponent ("Exponent", Float) = 1000
[Header(Sparkle)] _SparklesNormalMap ("Normal Map", 2D) = "bump" { }
_SparkleScale ("Scale", Float) = 10
_SparkleSpeed ("Speed", Float) = 0.75
_SparkleColor ("Color", Color) = (1,1,1,1)
_SparkleExponent ("Exponent", Float) = 10000
[Header(Edge Foam)] _EdgeFoamColor ("Color", Color) = (1,1,1,1)
_EdgeFoamDepth ("Scale", Float) = 10
[Header(Shadow Mapping)] [Toggle(SHADOWS)] _FancyShadows ("Enabled", Float) = 0
_MaxShadowDistance ("Maximum Sample Distance", Float) = 50
_ShadowColor ("Color", Color) = (0.5,0.5,0.5,1)
[Header(Vertex Waves #1)] _Wave1Direction ("Direction", Range(0, 1)) = 0
_Wave1Amplitude ("Amplitude", Float) = 1
_Wave1Wavelength ("Wavelength", Float) = 1
_Wave1Speed ("Speed", Float) = 1
[Header(Vertex Waves #2)] _Wave2Direction ("Direction", Range(0, 1)) = 0
_Wave2Amplitude ("Amplitude", Float) = 1
_Wave2Wavelength ("Wavelength", Float) = 1
_Wave2Speed ("Speed", Float) = 1
}
SubShader {
 LOD 100
 Tags { "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 GrabPass {
  "_GrabTexture"
}
 Pass {
  LOD 100
  Tags { "LIGHTMODE" = "ALWAYS" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  GpuProgramID 7251
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_EXP2" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}