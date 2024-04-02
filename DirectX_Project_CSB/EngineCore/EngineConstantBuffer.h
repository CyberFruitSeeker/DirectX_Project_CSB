#pragma once

// Ό³Έν :
class EngineConstantBuffer
{
public:
	// constrcuter destructer
	EngineConstantBuffer();
	~EngineConstantBuffer();

	// delete Function
	EngineConstantBuffer(const EngineConstantBuffer& _Other) = delete;
	EngineConstantBuffer(EngineConstantBuffer&& _Other) noexcept = delete;
	EngineConstantBuffer& operator=(const EngineConstantBuffer& _Other) = delete;
	EngineConstantBuffer& operator=(EngineConstantBuffer&& _Other) noexcept = delete;

protected:

private:

};

