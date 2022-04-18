//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "DynamicFog/Image Effect/Desktop Plus Orthogonal" {
Properties {
_MainTex ("Base (RGB)", 2D) = "white" { }
_Noise2Tex ("Noise2 (RGB)", 2D) = "white" { }
_FogAlpha ("Alpha", Range(0, 1)) = 0.8
_FogDistance ("Distance Params", Vector) = (0.1,0.001,1,0.15)
_FogHeightData ("Baseline Height", Vector) = (1,0,0,0.1)
_FogColor ("Color", Color) = (1,1,1,1)
_FogColor2 ("Color 2", Color) = (1,1,1,1)
_FogNoiseData ("Noise Data", Vector) = (0,0,0,0.1)
_FogSkyData ("Sky Data", Vector) = (1,1,1,1)
_FogSpeed ("Speed", Vector) = (0.1,0,0.1,1)
_FogOfWarCenter ("Fog Of War Center", Vector) = (0,0,0,1)
_FogOfWarSize ("Fog Of War Size", Vector) = (1,1,1,1)
_FogOfWar ("Fog of War Mask", 2D) = "white" { }
_FogDither ("Fog Dither Strength", Float) = 0.03
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 44410
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DITHER_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_OF_WAR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DITHER_ON" "FOG_OF_WAR_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DITHER_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "FOG_OF_WAR_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DITHER_ON" "FOG_OF_WAR_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}