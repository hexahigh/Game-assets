//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Sleek Render/Post Process/Compose" {
Properties {
_MainTex ("Texture", 2D) = "white" { }
_PreComposeTex ("PreCompose Texture", 2D) = "black" { }
_Colorize ("Colorize", Color) = (1,1,1,0)
_ContrastBrightness ("Contrast And Brightness", Vector) = (1,0.5,0,0)
_LuminanceConst ("Luminance Const", Vector) = (0.2126,0.7152,0.0722,0)
}
SubShader {
 Pass {
  ZTest Always
  ZWrite Off
  Cull Off
  GpuProgramID 21753
Program "vp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BRIGHTNESS_CONTRAST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLORIZE_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BRIGHTNESS_CONTRAST_ON" "COLORIZE_ON" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BRIGHTNESS_CONTRAST_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "COLORIZE_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "BRIGHTNESS_CONTRAST_ON" "COLORIZE_ON" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}