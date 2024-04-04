#pragma once

// Ό³Έν :
class EngineSampler
{
public:
	// constrcuter destructer
	EngineSampler();
	~EngineSampler();

	// delete Function
	EngineSampler(const EngineSampler& _Other) = delete;
	EngineSampler(EngineSampler&& _Other) noexcept = delete;
	EngineSampler& operator=(const EngineSampler& _Other) = delete;
	EngineSampler& operator=(EngineSampler&& _Other) noexcept = delete;

protected:

private:

};

