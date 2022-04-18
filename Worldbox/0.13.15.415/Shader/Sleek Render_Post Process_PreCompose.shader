//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Sleek Render/Post Process/PreCompose" {
Properties {
_MainTex ("Main Texture", 2D) = "black" { }
_BloomTex ("Bloom", 2D) = "black" { }
_BloomIntencity ("Bloom Intensity", Float) = 0.672
_VignetteShape ("Vignette Form", Vector) = (1,1,1,1)
_VignetteColor ("Vignette Color", Color) = (0,0,0,1)
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 63616
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VIGNETTE_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BLOOM_ON" "VIGNETTE_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "VIGNETTE_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BLOOM_ON" "VIGNETTE_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}