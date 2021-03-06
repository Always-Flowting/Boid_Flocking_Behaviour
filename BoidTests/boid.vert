#version 330 core

layout (location = 0) in vec2 aPos;
layout (location = 1) in float aAngle;
layout (location = 2) in float aSize;
layout (location = 3) in vec3 aCol;

out VS_OUT
{
	float angle;
	float size;
	vec3 colour;
} vs_out;

void main()
{
	gl_Position = vec4(aPos, -1.0, 1.0);
	vs_out.angle = aAngle;
	vs_out.size = aSize;
	vs_out.colour = aCol;
}