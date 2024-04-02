#pragma once

// Ό³Έν :
class EngineShaderResources
{
public:
	// constrcuter destructer
	EngineShaderResources();
	~EngineShaderResources();

	// delete Function
	EngineShaderResources(const EngineShaderResources& _Other) = delete;
	EngineShaderResources(EngineShaderResources&& _Other) noexcept = delete;
	EngineShaderResources& operator=(const EngineShaderResources& _Other) = delete;
	EngineShaderResources& operator=(EngineShaderResources&& _Other) noexcept = delete;

protected:

private:

};

