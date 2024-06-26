// 쉐이더는 기본적으로
// hlsl이라는 전혀 다른 언어를 사용합니다.
// C++을 익혔다면 그닥 어렵지는 않지만
// 센스가 없으면 고생할수 있습니다.
// 언제나 랜더링 파이프라인 지식에 기반해서 작성해줘야 합니다.

// 함수의 이름은 내맘대로 해도 됩니다.
// 그런데 어떠한 규칙을 만들면 편해져요
// 이 규칙은 회사마다 다르고
// 여러분들은 애초에 엔진이나 그래픽스 프로그래머로 들어간다면
// 각 쉐이더 뒤쪽에는 버텍스면 _VS
// 각 쉐이더 뒤쪽에는 픽셀이면 _PS
// 규칙을 만들었습니다. <= 회사마다 매번 달라질수 있다.

#include "EngineShaderBase.hlsli"

// 인풋레이아웃의 개념
// 인풋레이아웃은 2가지를 역할을 합니다.
// 내가 만든 버텍스 버퍼가 특정 시맨틱 가지고 있다는것을 정보를 담아주는 용도.
// 2번째는 어떤 버텍스 쉐이더에 어떤 시맨틱이 들어가 있는지에 대한 정보를 담당합니다.


// 리턴할 구조체도 만들어야 한다.
struct ImageVSOutPut
{
    float4 POSITION : SV_POSITION;
};

// 내가 여기에다가 스트럭트를 넣는다고 이게 쉐이더에서 
// CPU쪽에서 넣어주기로 한 데이터로 인정되지 않아요
// CPU에서 내가 행렬이나 데이터 등등을 만들어서
// 넣어주고 싶다면
// 상수버퍼라고 하는 인터페이스와 전용 문법을 이용해야만
// 다이렉트에 넣어줄수가 있습니다.
// hlsl에서 struct 이런 데이터가 있을거야. 라는 정의만 내려줄수 있고


//struct FTransform
//{
//    float4 Scale;
//    float4 Rotation;
//    float4 Position;
//    float4x4 ScaleMat;
//    float4x4 RotationMat;
//    float4x4 PositionMat;
//    float4x4 World;
//    float4x4 View;
//    float4x4 Projection;
//    float4x4 WVP;
//};

// 버텍스 쉐이더에 넣어줄수 있

ImageVSOutPut ImageShader_VS(FEngineVertex _Input)
{
    ImageVSOutPut Out = (ImageVSOutPut) 0;
    Out.POSITION = mul(_Input.POSITION, WVP);
    return Out;
}

// 픽셀쉐이더의 상수버퍼 0번은 달라도 된다.
cbuffer OutPutColor : register(b0)
{
    float4 MulColor;
    float4 PlusColor;
};


struct ImagePSOutPut
{
    float4 COLOR : SV_Target0;
};

ImagePSOutPut ImageShader_PS(ImageVSOutPut _Input)
{
        // 언어를 배울때는 왜 안돼 어리석은 초보적인 생각은 그만두고 배워야한다.
        // 그냥 구조체처럼 초기화 하는게 안되는데.
    ImagePSOutPut Out = (ImagePSOutPut) 0;
    // Out.COLOR = Color;
    Out.COLOR = float4(0.0f, 0.9f, 0.9f, 1.0f);
    
    return Out;
}
