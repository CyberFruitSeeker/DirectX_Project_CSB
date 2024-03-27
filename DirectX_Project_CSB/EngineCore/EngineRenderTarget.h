#pragma once

// Ό³Έν :
class EngineRenderTarget
{
public:
	// constrcuter destructer
	EngineRenderTarget();
	~EngineRenderTarget();

	// delete Function
	EngineRenderTarget(const EngineRenderTarget& _Other) = delete;
	EngineRenderTarget(EngineRenderTarget&& _Other) noexcept = delete;
	EngineRenderTarget& operator=(const EngineRenderTarget& _Other) = delete;
	EngineRenderTarget& operator=(EngineRenderTarget&& _Other) noexcept = delete;

protected:

private:

};

