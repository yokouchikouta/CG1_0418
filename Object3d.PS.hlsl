//float4 main() : SV_TARGET
//{
//	return float4(1.0f, 1.0f, 1.0f, 1.0f);
//}
struct PixelShaderOutput {
	float32_t4 color : SV_TARGET0;
};

PixelShaderOutput main() {
	PixelShaderOutput output;
	output.color = float32_t4(1.0, 1.0, 1.0, 1.0 );
	return output;
}

struct Material {
	float32_t4 color;
};
ConstantBuffer<Material> gMaterial : register(b0);
struct PixelShaderOutput {
	float32_t4 color : SV_TARGET0;
};
PixelShaderOutput main() {
	PixelShaderOutput output;
	output.color = gMaterial.color;
	return output;
}