//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "FlatKit/GradientSkybox" {
Properties {
_Color2 ("Top Color", Color) = (0.97,0.67,0.51,0)
_Color1 ("Bottom Color", Color) = (0,0.7,0.74,0)
[Space] _Intensity ("Intensity", Range(0, 2)) = 1
_Exponent ("Exponent", Range(0, 3)) = 1
[Space] _DirectionYaw ("Direction X angle", Range(0, 180)) = 0
_DirectionPitch ("Direction Y angle", Range(0, 180)) = 0
_Direction ("Direction", Vector) = (0,1,0,0)
}
SubShader {
 Tags { "QUEUE" = "Background" "RenderType" = "Background" }
 Pass {
  Tags { "QUEUE" = "Background" "RenderType" = "Background" }
  ZWrite Off
  Cull Off
  Fog {
   Mode Off
  }
  GpuProgramID 46542
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
CustomEditor "GradientSkyboxEditor"
}