︠0cf86a5e-6bd1-458a-b115-6bf4128bc35ds︠
var('x, a')
assume(a>0)
f(x)=sqrt(x*(1-x))/(x+a)
#view(integral(f(x),x))
view(integrate(f(x),x,0,1))
︡bb43f919-33aa-46c5-b719-7c260b4b8b44︡{"stdout":"(x, a)\n"}︡{"html":"<div align='center'>$\\displaystyle \\frac{1}{2} \\, \\pi + \\pi a - \\pi \\sqrt{a^{2} + a}$</div>"}︡{"done":true}︡
︠dfb70f5b-0de4-4621-8c14-711af79cc95es︠
var('x,a,b')
assume(a<b)
f(x)=sqrt((x-a)*(b-x))/x
result=integrate(f(x),x,a,b)
view(result)
︡4bbd5ba8-32f0-4c61-800e-a612df635b87︡{"stdout":"(x, a, b)\n"}︡{"html":"<div align='center'>$\\displaystyle {\\left(a + b\\right)} \\arcsin\\left(-\\frac{\\sqrt{a^{2} - 2 \\, a b + b^{2}}}{a - b}\\right) - 2 \\, \\sqrt{a b} \\arcsin\\left(-\\frac{\\sqrt{a^{2} - 2 \\, a b + b^{2}}}{a - b}\\right)$</div>"}︡{"done":true}︡









