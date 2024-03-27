#pragma once

// Ό³Έν :
class EngineTexture
{
public:
	// constrcuter destructer
	EngineTexture();
	~EngineTexture();

	// delete Function
	EngineTexture(const EngineTexture& _Other) = delete;
	EngineTexture(EngineTexture&& _Other) noexcept = delete;
	EngineTexture& operator=(const EngineTexture& _Other) = delete;
	EngineTexture& operator=(EngineTexture&& _Other) noexcept = delete;

protected:

private:

};

