//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Custom/Outline Fill" {
Properties {
[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Float) = 0
_OutlineColor ("Outline Color", Color) = (1,1,1,1)
_OutlineWidth ("Outline Width", Range(0, 10)) = 2
}
SubShader {
 Tags { "DisableBatching" = "true" "QUEUE" = "Transparent+110" "RenderType" = "Transparent" }
 Pass {
  Name "Fill"
  Tags { "DisableBatching" = "true" "QUEUE" = "Transparent+110" "RenderType" = "Transparent" }
  Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
  ColorMask RGB 0
  ZTest Off
  ZWrite Off
  Cull Off
  Stencil {
   Ref 1
   Comp NotEqual
   Pass Keep
   Fail Keep
   ZFail Keep
  }
  GpuProgramID 62649
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