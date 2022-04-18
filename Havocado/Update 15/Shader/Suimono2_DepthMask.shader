//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Suimono2/DepthMask" {
Properties {
}
SubShader {
 Tags { "QUEUE" = "Geometry+10" }
 Pass {
  Tags { "QUEUE" = "Geometry+10" }
  ColorMask 0 0
  Fog {
   Mode Off
  }
  GpuProgramID 11839
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