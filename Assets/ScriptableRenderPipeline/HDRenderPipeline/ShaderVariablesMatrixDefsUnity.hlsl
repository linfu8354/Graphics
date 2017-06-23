#ifdef UNITY_SHADER_VARIABLES_MATRIX_DEFS_HDCAMERA_INCLUDED
	#error Mixing HDCamera and Unity matrix definitions
#endif

#ifndef UNITY_SHADER_VARIABLES_MATRIX_DEFS_UNITY_INCLUDED
#define UNITY_SHADER_VARIABLES_MATRIX_DEFS_UNITY_INCLUDED

#define UNITY_MATRIX_M     unity_ObjectToWorld
#define UNITY_MATRIX_I_M   unity_WorldToObject
#define UNITY_MATRIX_V     unity_MatrixV
#define UNITY_MATRIX_I_V   unity_MatrixInvV
#define UNITY_MATRIX_P     glstate_matrix_projection
#define UNITY_MATRIX_I_P   inverse_glstate_matrix_projection_is_not_defined
#define UNITY_MATRIX_VP    unity_MatrixVP
#define UNITY_MATRIX_MVP   mul(UNITY_MATRIX_VP, UNITY_MATRIX_M)
#define UNITY_MATRIX_MV    mul(UNITY_MATRIX_V, UNITY_MATRIX_M)
#define UNITY_MATRIX_T_MV  transpose(UNITY_MATRIX_MV)
#define UNITY_MATRIX_IT_MV transpose(mul(UNITY_MATRIX_I_M, UNITY_MATRIX_I_V))

#endif // UNITY_SHADER_VARIABLES_MATRIX_DEFS_UNITY_INCLUDED
